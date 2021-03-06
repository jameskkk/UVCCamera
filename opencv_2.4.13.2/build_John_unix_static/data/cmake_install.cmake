# Install script for directory: /Data/opencv_2.4.13.2/sources/data

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/haarcascades" TYPE FILE FILES
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_eye.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_eye_tree_eyeglasses.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalcatface.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalcatface_extended.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalface_alt.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalface_alt2.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalface_alt_tree.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalface_default.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_fullbody.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_lefteye_2splits.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_licence_plate_rus_16stages.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_lowerbody.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_eyepair_big.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_eyepair_small.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_leftear.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_lefteye.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_mouth.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_nose.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_rightear.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_righteye.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_upperbody.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_profileface.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_righteye_2splits.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_russian_plate_number.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_smile.xml"
    "/Data/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_upperbody.xml"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/lbpcascades" TYPE FILE FILES
    "/Data/opencv_2.4.13.2/sources/data/lbpcascades/lbpcascade_frontalcatface.xml"
    "/Data/opencv_2.4.13.2/sources/data/lbpcascades/lbpcascade_frontalface.xml"
    "/Data/opencv_2.4.13.2/sources/data/lbpcascades/lbpcascade_profileface.xml"
    "/Data/opencv_2.4.13.2/sources/data/lbpcascades/lbpcascade_silverware.xml"
    )
endif()

