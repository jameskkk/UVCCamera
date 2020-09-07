#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QImage>
#include <QTimer>
#include <QDebug>

#include <time.h>
#include "opencv2/core.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/opencv.hpp"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_btnStart_clicked();
    void on_btnStop_clicked();
    void on_btnCapture_clicked();
    void openCamara();
    void readFrame();
    void closeCamara();
    void takingPictures();

    void openCamara2();
    void readFrame2();
    void closeCamara2();
    void takingPictures2();

    void on_btnSettings_clicked();
    void on_btnSettings2_clicked();
    void on_btnSetCamProp_clicked();

    int CameraPropString2Id(const QString &str);
    void on_btnSetCamProp2_clicked();

private:
    Ui::MainWindow *ui;
    QTimer    *timer;
    QImage    *imag;
    CvCapture *cam;
    IplImage  *frame;

    clock_t m_startTime;
    unsigned int m_fps;

    QTimer    *timer2;
    QImage    *imag2;
    CvCapture *cam2;
    IplImage  *frame2;

    clock_t m_startTime2;
    unsigned int m_fps2;
};

#endif // MAINWINDOW_H
