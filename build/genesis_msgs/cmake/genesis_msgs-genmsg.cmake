# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "genesis_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Igenesis_msgs:/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(genesis_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg" NAME_WE)
add_custom_target(_genesis_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "genesis_msgs" "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg" NAME_WE)
add_custom_target(_genesis_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "genesis_msgs" "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg" NAME_WE)
add_custom_target(_genesis_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "genesis_msgs" "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg" NAME_WE)
add_custom_target(_genesis_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "genesis_msgs" "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg" NAME_WE)
add_custom_target(_genesis_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "genesis_msgs" "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg" NAME_WE)
add_custom_target(_genesis_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "genesis_msgs" "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg" NAME_WE)
add_custom_target(_genesis_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "genesis_msgs" "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_cpp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_cpp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_cpp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_cpp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_cpp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_cpp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/genesis_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(genesis_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/genesis_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(genesis_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(genesis_msgs_generate_messages genesis_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_cpp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_cpp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_cpp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_cpp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_cpp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_cpp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_cpp _genesis_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(genesis_msgs_gencpp)
add_dependencies(genesis_msgs_gencpp genesis_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS genesis_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/genesis_msgs
)
_generate_msg_eus(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/genesis_msgs
)
_generate_msg_eus(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/genesis_msgs
)
_generate_msg_eus(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/genesis_msgs
)
_generate_msg_eus(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/genesis_msgs
)
_generate_msg_eus(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/genesis_msgs
)
_generate_msg_eus(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/genesis_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(genesis_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/genesis_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(genesis_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(genesis_msgs_generate_messages genesis_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_eus _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_eus _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_eus _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_eus _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_eus _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_eus _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_eus _genesis_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(genesis_msgs_geneus)
add_dependencies(genesis_msgs_geneus genesis_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS genesis_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_lisp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_lisp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_lisp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_lisp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_lisp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/genesis_msgs
)
_generate_msg_lisp(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/genesis_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(genesis_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/genesis_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(genesis_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(genesis_msgs_generate_messages genesis_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_lisp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_lisp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_lisp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_lisp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_lisp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_lisp _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_lisp _genesis_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(genesis_msgs_genlisp)
add_dependencies(genesis_msgs_genlisp genesis_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS genesis_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/genesis_msgs
)
_generate_msg_nodejs(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/genesis_msgs
)
_generate_msg_nodejs(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/genesis_msgs
)
_generate_msg_nodejs(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/genesis_msgs
)
_generate_msg_nodejs(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/genesis_msgs
)
_generate_msg_nodejs(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/genesis_msgs
)
_generate_msg_nodejs(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/genesis_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(genesis_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/genesis_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(genesis_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(genesis_msgs_generate_messages genesis_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_nodejs _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_nodejs _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_nodejs _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_nodejs _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_nodejs _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_nodejs _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_nodejs _genesis_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(genesis_msgs_gennodejs)
add_dependencies(genesis_msgs_gennodejs genesis_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS genesis_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/genesis_msgs
)
_generate_msg_py(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/genesis_msgs
)
_generate_msg_py(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/genesis_msgs
)
_generate_msg_py(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/genesis_msgs
)
_generate_msg_py(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/genesis_msgs
)
_generate_msg_py(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/genesis_msgs
)
_generate_msg_py(genesis_msgs
  "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/genesis_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(genesis_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/genesis_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(genesis_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(genesis_msgs_generate_messages genesis_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/SteeringReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_py _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/MandoObjectReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_py _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/LaneReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_py _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRTrackReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_py _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/ESRValidReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_py _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/WheelSpeedReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_py _genesis_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hmcl/shared_dir/mpc_ws/src/genesis_msgs/msg/VehicleImuReport.msg" NAME_WE)
add_dependencies(genesis_msgs_generate_messages_py _genesis_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(genesis_msgs_genpy)
add_dependencies(genesis_msgs_genpy genesis_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS genesis_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/genesis_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/genesis_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(genesis_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/genesis_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/genesis_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(genesis_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/genesis_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/genesis_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(genesis_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/genesis_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/genesis_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(genesis_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/genesis_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/genesis_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/genesis_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(genesis_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
