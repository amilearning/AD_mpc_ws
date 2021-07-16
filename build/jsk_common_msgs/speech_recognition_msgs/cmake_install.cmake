# Install script for directory: /home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/speech_recognition_msgs/msg" TYPE FILE FILES
    "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Grammar.msg"
    "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/PhraseRule.msg"
    "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/SpeechRecognitionCandidates.msg"
    "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/msg/Vocabulary.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/speech_recognition_msgs/srv" TYPE FILE FILES "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/srv/SpeechRecognition.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/speech_recognition_msgs/cmake" TYPE FILE FILES "/home/hmcl/shared_dir/mpc_ws/build/jsk_common_msgs/speech_recognition_msgs/catkin_generated/installspace/speech_recognition_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hmcl/shared_dir/mpc_ws/devel/include/speech_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/hmcl/shared_dir/mpc_ws/devel/share/roseus/ros/speech_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hmcl/shared_dir/mpc_ws/devel/share/common-lisp/ros/speech_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/hmcl/shared_dir/mpc_ws/devel/share/gennodejs/ros/speech_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/hmcl/shared_dir/mpc_ws/devel/lib/python2.7/dist-packages/speech_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hmcl/shared_dir/mpc_ws/devel/lib/python2.7/dist-packages/speech_recognition_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hmcl/shared_dir/mpc_ws/build/jsk_common_msgs/speech_recognition_msgs/catkin_generated/installspace/speech_recognition_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/speech_recognition_msgs/cmake" TYPE FILE FILES "/home/hmcl/shared_dir/mpc_ws/build/jsk_common_msgs/speech_recognition_msgs/catkin_generated/installspace/speech_recognition_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/speech_recognition_msgs/cmake" TYPE FILE FILES
    "/home/hmcl/shared_dir/mpc_ws/build/jsk_common_msgs/speech_recognition_msgs/catkin_generated/installspace/speech_recognition_msgsConfig.cmake"
    "/home/hmcl/shared_dir/mpc_ws/build/jsk_common_msgs/speech_recognition_msgs/catkin_generated/installspace/speech_recognition_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/speech_recognition_msgs" TYPE FILE FILES "/home/hmcl/shared_dir/mpc_ws/src/jsk_common_msgs/speech_recognition_msgs/package.xml")
endif()

