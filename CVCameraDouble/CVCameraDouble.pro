#-------------------------------------------------
#
# Project created by QtCreator 2017-11-03T11:30:47
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = CVCameraDouble
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

win32 {
INCLUDEPATH += ../opencv_2.4.13.2/build_John_noGPU/include

LIBS += ../opencv_2.4.13.2/build_John_noGPU/lib/Release/opencv_highgui2413.lib \
        ../opencv_2.4.13.2/build_John_noGPU/lib/Release/opencv_imgproc2413.lib \
        ../opencv_2.4.13.2/build_John_noGPU/lib/Release/opencv_core2413.lib
} mac {
   QMAKE_LFLAGS += -F/Applications/Xcode_6.4.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk/System/Library/Frameworks/
   LIBS += -framework CoreMedia -framework CoreVideo -framework AVFoundation -framework Cocoa
#   LIBS += -framework CoreVideo
#   LIBS += -framework AVFoundation
#   LIBS += -framework Cocoa

   INCLUDEPATH += ../opencv_2.4.13.2/build_John_unix_static/include
   LIBS += /usr/local/lib/libopencv_core.a \
       /usr/local/lib/libopencv_highgui.a \
       /usr/local/lib/libopencv_imgproc.a \
       /usr/local/share/OpenCV/3rdparty/lib/liblibjasper.a \
       /usr/local/share/OpenCV/3rdparty/lib/liblibjpeg.a \
       /usr/local/share/OpenCV/3rdparty/lib/liblibpng.a \
       /usr/local/share/OpenCV/3rdparty/lib/liblibtiff.a \
       /usr/local/share/OpenCV/3rdparty/lib/libzlib.a
}

FORMS += \
        mainwindow.ui

RC_FILE = icon.rc
