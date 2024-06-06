# Install script for directory: /home/nitish/Documents/Real-time-MPC/src/genesis_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nitish/Documents/Real-time-MPC/install")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/genesis_msgs/msg" TYPE FILE FILES
    "/home/nitish/Documents/Real-time-MPC/src/genesis_msgs/msg/SteeringReport.msg"
    "/home/nitish/Documents/Real-time-MPC/src/genesis_msgs/msg/WheelSpeedReport.msg"
    "/home/nitish/Documents/Real-time-MPC/src/genesis_msgs/msg/VehicleImuReport.msg"
    "/home/nitish/Documents/Real-time-MPC/src/genesis_msgs/msg/LaneReport.msg"
    "/home/nitish/Documents/Real-time-MPC/src/genesis_msgs/msg/MandoObjectReport.msg"
    "/home/nitish/Documents/Real-time-MPC/src/genesis_msgs/msg/ESRTrackReport.msg"
    "/home/nitish/Documents/Real-time-MPC/src/genesis_msgs/msg/ESRValidReport.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/genesis_msgs/cmake" TYPE FILE FILES "/home/nitish/Documents/Real-time-MPC/build/genesis_msgs/catkin_generated/installspace/genesis_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nitish/Documents/Real-time-MPC/devel/include/genesis_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nitish/Documents/Real-time-MPC/devel/share/roseus/ros/genesis_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nitish/Documents/Real-time-MPC/devel/share/common-lisp/ros/genesis_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nitish/Documents/Real-time-MPC/devel/share/gennodejs/ros/genesis_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nitish/Documents/Real-time-MPC/devel/lib/python3/dist-packages/genesis_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/nitish/Documents/Real-time-MPC/devel/lib/python3/dist-packages/genesis_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nitish/Documents/Real-time-MPC/build/genesis_msgs/catkin_generated/installspace/genesis_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/genesis_msgs/cmake" TYPE FILE FILES "/home/nitish/Documents/Real-time-MPC/build/genesis_msgs/catkin_generated/installspace/genesis_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/genesis_msgs/cmake" TYPE FILE FILES
    "/home/nitish/Documents/Real-time-MPC/build/genesis_msgs/catkin_generated/installspace/genesis_msgsConfig.cmake"
    "/home/nitish/Documents/Real-time-MPC/build/genesis_msgs/catkin_generated/installspace/genesis_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/genesis_msgs" TYPE FILE FILES "/home/nitish/Documents/Real-time-MPC/src/genesis_msgs/package.xml")
endif()

