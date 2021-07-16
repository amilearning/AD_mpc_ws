# Install script for directory: /home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/jsk_footstep_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hmcl/shared_dir/mpc_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_footstep_msgs/msg" TYPE FILE FILES
    "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/jsk_footstep_msgs/msg/Footstep.msg"
    "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/jsk_footstep_msgs/msg/FootstepArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_footstep_msgs/action" TYPE FILE FILES
    "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/jsk_footstep_msgs/action/PlanFootsteps.action"
    "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/jsk_footstep_msgs/action/ExecFootsteps.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_footstep_msgs/msg" TYPE FILE FILES
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/PlanFootstepsAction.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/PlanFootstepsActionGoal.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/PlanFootstepsActionResult.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/PlanFootstepsActionFeedback.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/PlanFootstepsGoal.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/PlanFootstepsResult.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/PlanFootstepsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_footstep_msgs/msg" TYPE FILE FILES
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/ExecFootstepsAction.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/ExecFootstepsActionGoal.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/ExecFootstepsActionResult.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/ExecFootstepsActionFeedback.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/ExecFootstepsGoal.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/ExecFootstepsResult.msg"
    "/home/hmcl/shared_dir/mpc_ws/devel/share/jsk_footstep_msgs/msg/ExecFootstepsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_footstep_msgs/cmake" TYPE FILE FILES "/home/hmcl/shared_dir/mpc_ws/build/jsk_common_msgs/jsk_footstep_msgs/catkin_generated/installspace/jsk_footstep_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hmcl/shared_dir/mpc_ws/devel/include/jsk_footstep_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/hmcl/shared_dir/mpc_ws/devel/share/roseus/ros/jsk_footstep_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hmcl/shared_dir/mpc_ws/devel/share/common-lisp/ros/jsk_footstep_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/hmcl/shared_dir/mpc_ws/devel/share/gennodejs/ros/jsk_footstep_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/hmcl/shared_dir/mpc_ws/devel/lib/python2.7/dist-packages/jsk_footstep_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hmcl/shared_dir/mpc_ws/devel/lib/python2.7/dist-packages/jsk_footstep_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hmcl/shared_dir/mpc_ws/build/jsk_common_msgs/jsk_footstep_msgs/catkin_generated/installspace/jsk_footstep_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_footstep_msgs/cmake" TYPE FILE FILES "/home/hmcl/shared_dir/mpc_ws/build/jsk_common_msgs/jsk_footstep_msgs/catkin_generated/installspace/jsk_footstep_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_footstep_msgs/cmake" TYPE FILE FILES
    "/home/hmcl/shared_dir/mpc_ws/build/jsk_common_msgs/jsk_footstep_msgs/catkin_generated/installspace/jsk_footstep_msgsConfig.cmake"
    "/home/hmcl/shared_dir/mpc_ws/build/jsk_common_msgs/jsk_footstep_msgs/catkin_generated/installspace/jsk_footstep_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jsk_footstep_msgs" TYPE FILE FILES "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/jsk_footstep_msgs/package.xml")
endif()

