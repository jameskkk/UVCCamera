#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QImage>
#include <QTimer>
#include <QDebug>

#include <time.h>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/opencv.hpp>

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
    void openCamara();
    void readFarme();
    void closeCamara();
    void takingPictures();

    void on_btnStop_clicked();

    void on_btnCapture_clicked();

private:
    Ui::MainWindow *ui;
    QTimer    *timer;
    QImage    *imag;
    CvCapture *cam;
    IplImage  *frame;

    clock_t m_startTime;
    unsigned int m_fps;
};

#endif // MAINWINDOW_H
