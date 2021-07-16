#!/usr/bin/env python

# MPC Command Publisher/Controller Module Interface to the Genesis.

import sys
from threading import Lock

###########################################
#### ROS
###########################################
import rospy
import math as m
from genesis_path_follower.msg import state_est
from genesis_path_follower.msg import mpc_path
from std_msgs.msg import UInt8 as UInt8Msg
from std_msgs.msg import Float32 as Float32Msg 
from std_msgs.msg import Float64 as Float64Msg
from geometry_msgs.msg import TwistStamped

from autoware_msgs.msg import LocalTraj


###########################################
#### LOAD ROSPARAMS AND UPDATE SYS.PATH
###########################################
# if rospy.has_param("mat_waypoints"):
# 	mat_fname = rospy.get_param("mat_waypoints")
# else:
# 	raise ValueError("No Matfile of waypoints provided!")

if rospy.has_param("track_using_time") and rospy.has_param("target_vel"):
	track_with_time = rospy.get_param("track_using_time")
	target_vel = rospy.get_param("target_vel")	
else:
	raise ValueError("Invalid rosparam trajectory definition: track_using_time and target_vel")

if rospy.has_param("scripts_dir"):
	scripts_dir = rospy.get_param("scripts_dir")
else:
	raise ValueError("Did not provide the scripts directory!")

if rospy.has_param("lat0") and rospy.has_param("lon0"):
	lat0 = rospy.get_param("lat0")
	lon0 = rospy.get_param("lon0")	
else:
	raise ValueError("Invalid rosparam global origin provided!")

if rospy.has_param("controller"):
	controller_choice = rospy.get_param("controller")
else:
	raise ValueError("Did not select a controller!")

# Access Python code for MPC/path utils.  Ugly way of doing it, can seek to clean this up in the future.
sys.path.append(scripts_dir)

###########################################
#### MPC Controller Module with Cost Function Weights.
#### Reference GPS Trajectory Module.
###########################################
# TODO: We can make some of these things rosparams in the future, like N and DT.
if controller_choice == 'kinematic_mpc':
	from controllers.kinematic_mpc import KinMPCPathFollower as MPC
	MPC_PARAMS = {'N' : 10, 'DT' : 0.2, 'Q' : [1., 1., 10., 0.0], 'R' : [10., 100.]}
elif controller_choice == 'kinematic_frenet_mpc':
	from controllers.kinematic_frenet_mpc import KinFrenetMPCPathFollower as MPC
	MPC_PARAMS = {'N' : 10, 'DT' : 0.2, 'Q' : [0., 100., 500., 0.5], 'R' : [10., 100.]}
elif controller_choice == 'kinematic_frenet_pid':
	# TODO: fix MPC vs. PID discrepancy
	from controllers.kinematic_frenet_pid import KinFrenetPIDPathFollower as MPC
	MPC_PARAMS = {'N' : 10, 'DT' : 0.2, 'kLA' : 10., 'k_delta': 0.1, 'kp_acc': 0.1, 'ki_acc': 0.01}
else:
	raise ValueError("Invalid controller selection: %s" % controller_choice)

from gps_utils import ref_gps_traj as RGT

###########################################
#### MPC Command Publisher Class
###########################################
class MPCCommandPublisher():

	def __init__(self):	
		# Node and Publisher/Subscriber Setup.
		rospy.init_node("dbw_mpc_path_follower")
		
		# Acceleration/Steering Command (for drive-by-wire) + MPC solution publisher (for viz/analysis).
		self.acc_prev   = 0. # last published acceleration
		self.steer_prev = 0. # last published steering angle
		self.acc_pub   = rospy.Publisher("/control/accel", Float32Msg, queue_size=2)      
		self.steer_pub = rospy.Publisher("/Steering_Command", Float64Msg, queue_size=2) 
		self.target_vel_pub = rospy.Publisher("/vel_target", Float32Msg, queue_size=2) 
		self.mpc_path_pub = rospy.Publisher("mpc_path", mpc_path, queue_size=2)      
		self.simulation_cmd = rospy.Publisher("/twist_raw", TwistStamped, queue_size=100)     
	   	self.des_velocity = None
		# State Estimation Subscriber.
		self.current_state = {'t': -1., 'x0': 0., 'y0': 0., 'psi0': 0., 'v0': 0}
		self.state_lock = Lock()
		self.sub_state  = rospy.Subscriber("state_est", state_est, self.state_est_callback, queue_size=2)
		self.sub_ref_traj =  rospy.Subscriber("/local_traj", LocalTraj, self.ref_path_callback, queue_size=2)
		self.path_recieved = False
		# TODO: update description and make yaw/psi consistent.
		self.mpc = MPC(**MPC_PARAMS)
		# self.ref_traj = RGT.GPSRefTrajectory(mat_filename=mat_fname, LAT0=lat0, LON0=lon0, traj_horizon=self.mpc.N, traj_dt=self.mpc.DT)
		self.ref_traj = None
		# One time drive-by-wire enable message published.  We assume the driver will disable drive-by-wire
		# using brake/steering overrides, although it could be done by this class too.
		acc_enable_pub   = rospy.Publisher("/control/enable_accel", UInt8Msg, queue_size=2, latch=True)
		steer_enable_pub = rospy.Publisher("/control/enable_spas",  UInt8Msg, queue_size=2, latch=True)
		acc_enable_pub.publish(UInt8Msg(1))
		steer_enable_pub.publish(UInt8Msg(1))
		
		self.pub_loop()
	
	# def pub_cmd(self,target_vel,acc,st_angle):
	# 	cmd = TwistStamped()
	# 	wheelbase = 2.9
	# 	angular_cmd = target_vel * m.tan(st_angle) / wheelbase		
	# 	cmd.header.frame_id = "/base_link"
	# 	cmd.header.stamp = rospy.Time.now()
	# 	cmd.twist.linear.x = target_vel
	# 	cmd.twist.linear.y = 0.0
	# 	cmd.twist.linear.z = 0.0
	# 	cmd.twist.angular.x = 0.0
	# 	cmd.twist.angular.y = 0.0
	# 	cmd.twist.angular.z = angular_cmd
	# 	print(angular_cmd)
	# 	print(target_vel)
	# 	print("@@@@@@@@@@@@@")
	# 	self.simulation_cmd.publish(cmd)
		

	def ref_path_callback(self,msgs):
		self.path_recieved = True
		self.ref_traj = RGT.GPSRefTrajectory(msg = msgs,traj_horizon=self.mpc.N, traj_dt=self.mpc.DT)
		self.des_velocity = msgs.ref_vel
		# print(self.des_velocity)
		print("path recieved")


		

	def state_est_callback(self, msg):
		with self.state_lock:
			self.current_state['t']    = msg.header.stamp.secs + 1e-9 * msg.header.stamp.nsecs
			self.current_state['x0']   = msg.x
			self.current_state['y0']   = msg.y
			self.current_state['psi0'] = msg.psi
			self.current_state['v0']   = msg.v			
			
	def pub_loop(self):
		loop_rate = rospy.Rate(50.0)    
		update_dict = {} # contains parameter/warm start information needed for the MPC module.

		while not rospy.is_shutdown():
			if self.path_recieved is False or self.ref_traj is None:
				continue

			with self.state_lock:
				state = self.current_state.copy()				
			
			if state['t'] < 0:
				# The state has not been received so don't start publishing yet.
				loop_rate.sleep()
				continue

			if track_with_time:
				# Trajectory tracking with varying speed profile.
				waypoint_dict = self.ref_traj.get_waypoints(state['x0'], state['y0'], state['psi0'], v_target=None)
			else:
				# Trajectory tracking with a fixed speed profile.
				# waypoint_dict = self.ref_traj.get_waypoints(state['x0'], state['y0'], state['psi0'], v_target=target_vel)	
				waypoint_dict = self.ref_traj.get_waypoints(state['x0'], state['y0'], state['psi0'], v_target=self.des_velocity)	

			
			# print(waypoint_dict)
			if waypoint_dict['stop']:
				self.acc_pub.publish(Float32Msg(-1.0))
				st_cmd_tmp = self.ST_angle_to_cmd(0.0)
				
				self.steer_pub.publish(Float64Msg(st_cmd_tmp))
				self.target_vel_pub.publish(Float32Msg(0.0))
												
				##############
				cmd = TwistStamped()				
				cmd.header.frame_id = "/base_link"
				cmd.header.stamp = rospy.Time.now()
				cmd.twist.linear.x = 0.0
				cmd.twist.angular.z = 0.0					
				self.simulation_cmd.publish(cmd)	
				
			else:
				update_dict.update(state)
				update_dict.update(waypoint_dict)
				update_dict['acc_prev'] = self.acc_prev
				update_dict['df_prev']  = self.steer_prev			

				self.mpc.update(update_dict)
				sol_dict = self.mpc.solve()

				if sol_dict['optimal']:
					self.acc_pub.publish(Float32Msg(sol_dict['u_control'][0]))
					st_cmd_tmp = self.ST_angle_to_cmd(sol_dict['u_control'][1])
					self.steer_pub.publish(Float64Msg(st_cmd_tmp))
					tmptmp = Float32Msg(sol_dict['u_control'][0]).data
					
					########################################3
					target_vel_tmp = Float64Msg(sol_dict['vel_target']).data
					st_angle = Float64Msg(sol_dict['u_control'][1]).data									
					cmd = TwistStamped()
					wheelbase = 2.9
					angular_cmd = target_vel_tmp * m.tan(st_angle) / wheelbase		
					cmd.header.frame_id = "/base_link"
					cmd.header.stamp = rospy.Time.now()
					cmd.twist.linear.x = target_vel_tmp
					cmd.twist.angular.z = angular_cmd	
					# if target_vel_tmp > 0: 				
					self.simulation_cmd.publish(cmd)	
					
					# print("St_CMD = ")
					# print(st_cmd_tmp)
					self.acc_prev   = sol_dict['u_control'][0]
					self.steer_prev = sol_dict['u_control'][1]
					self.target_vel_pub.publish(Float32Msg(sol_dict['vel_target']))
					
					

				if 'warm_start' not in update_dict.keys():
					update_dict['warm_start'] = {}
					
				update_dict['warm_start']['z_ws']  = sol_dict['z_mpc'] 
				update_dict['warm_start']['u_ws']  = sol_dict['u_mpc'] 
				update_dict['warm_start']['sl_ws'] = sol_dict['sl_mpc'] 

				self.publish_mpc_path_message(sol_dict)

			loop_rate.sleep()

	def publish_mpc_path_message(self, sol_dict):
		mpc_path_msg = mpc_path()
		
		mpc_path_msg.header.stamp = rospy.get_rostime()
		mpc_path_msg.solve_status = 'optimal' if sol_dict['optimal'] else 'suboptimal'
		mpc_path_msg.solve_time = sol_dict['solve_time']

		mpc_path_msg.xs   = sol_dict['z_mpc'][:,0] # x_mpc
		mpc_path_msg.ys   = sol_dict['z_mpc'][:,1] # y_mpc
		mpc_path_msg.psis = sol_dict['z_mpc'][:,2] # psi_mpc
		mpc_path_msg.vs   = sol_dict['z_mpc'][:,3] # v_mpc

		if 'z_mpc_frenet' in sol_dict:
			mpc_path_msg.ss    = sol_dict['z_mpc_frenet'][:,0]
			mpc_path_msg.eys   = sol_dict['z_mpc_frenet'][:,1]
			mpc_path_msg.epsis = sol_dict['z_mpc_frenet'][:,2]

			mpc_path_msg.vrf   = sol_dict['v_ref_frenet']
			mpc_path_msg.crf   = sol_dict['curv_ref_frenet']

		mpc_path_msg.xr   = sol_dict['z_ref'][:,0] # x_ref
		mpc_path_msg.yr   = sol_dict['z_ref'][:,1] # y_ref
		mpc_path_msg.psir = sol_dict['z_ref'][:,2] # psi_ref
		mpc_path_msg.vr   = sol_dict['z_ref'][:,3] # v_ref

		mpc_path_msg.acc  = sol_dict['u_mpc'][:,0] # acc_mpc
		mpc_path_msg.df   = sol_dict['u_mpc'][:,1] # df_mpc



		self.mpc_path_pub.publish(mpc_path_msg)
	
	def ST_cmd_to_angle(self,cmd):
		ST_angle_in_rad = -1*(cmd+363.33) / 12.456 * 3.14195 / 180 
		return ST_angle_in_rad

	def ST_angle_to_cmd(self,angle_in_rad):
		ST_cmd = angle_in_rad * 180/3.14195 *12.456 *-1 - 363.33 		
		return ST_cmd
###########################################
#### Main Function
###########################################
if __name__=='__main__':	
	MPCCommandPublisher()
