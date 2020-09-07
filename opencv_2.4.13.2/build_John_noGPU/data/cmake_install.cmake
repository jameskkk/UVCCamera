# Install script for directory: E:/SDK/opencv_2.4.13.2/sources/data

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "E:/SDK/opencv_2.4.13.2/build_John_noGPU/install")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/haarcascades" TYPE FILE FILES
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_eye.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_eye_tree_eyeglasses.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalcatface.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalcatface_extended.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalface_alt.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalface_alt2.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalface_alt_tree.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_frontalface_default.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_fullbody.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_lefteye_2splits.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_licence_plate_rus_16stages.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_lowerbody.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_eyepair_big.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_eyepair_small.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_leftear.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_lefteye.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_mouth.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_nose.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_rightear.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_righteye.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_mcs_upperbody.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_profileface.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_righteye_2splits.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_russian_plate_number.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_smile.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/haarcascades/haarcascade_upperbody.xml"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/lbpcascades" TYPE FILE FILES
    "E:/SDK/opencv_2.4.13.2/sources/data/lbpcascades/lbpcascade_frontalcatface.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/lbpcascades/lbpcascade_frontalface.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/lbpcascades/lbpcascade_profileface.xml"
    "E:/SDK/opencv_2.4.13.2/sources/data/lbpcascades/lbpcascade_silverware.xml"
    )
endif()

