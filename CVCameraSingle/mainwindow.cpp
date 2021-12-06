#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QFile>
#include <QStandardPaths>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->comboBoxCam->insertItem(0, tr("0"));
    ui->comboBoxCam->insertItem(1, tr("1"));
    ui->comboBoxCam->insertItem(2, tr("2"));
    ui->comboBoxCam->insertItem(3, tr("3"));
    ui->comboBoxCam->insertItem(4, tr("4"));

    ui->comboBoxResolution->insertItem(0, tr("160x120"));
    ui->comboBoxResolution->insertItem(1, tr("320x240"));
    ui->comboBoxResolution->insertItem(2, tr("640x480"));
    ui->comboBoxResolution->insertItem(3, tr("1920x1080"));
    ui->comboBoxResolution->insertItem(4, tr("2592x1944"));

    cam     = nullptr;
    timer   = new QTimer(this);
    imag    = new QImage();

    connect(timer, SIGNAL(timeout()), this, SLOT(readFarme()));
    connect(ui->btnStart, SIGNAL(clicked()), this, SLOT(openCamara()));
    connect(ui->btnCapture, SIGNAL(clicked()), this, SLOT(takingPictures()));
    connect(ui->btnStop, SIGNAL(clicked()), this, SLOT(closeCamara()));
}

MainWindow::~MainWindow()
{
    closeCamara();

    if (timer != nullptr) {
        delete timer;
        timer = nullptr;
    }
    if (imag != nullptr) {
        delete imag;
        imag = nullptr;
    }

    delete ui;
}

void MainWindow::on_btnStart_clicked()
{

}

void MainWindow::on_btnStop_clicked()
{

}

void MainWindow::on_btnCapture_clicked()
{

}


void MainWindow::openCamara()
{
    m_fps = 0;
    m_startTime = clock();
    int cameraId = ui->comboBoxCam->currentIndex();
    qDebug() << "cameraId = " << cameraId;
    cam = cvCreateCameraCapture(cameraId);
    switch (ui->comboBoxResolution->currentIndex()) {
    case 1:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 320);
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 240);
        break;
    case 2:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 640);
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 480);
        break;
    case 3:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 1920);
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 1080);
        break;
    case 4:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 2592);
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 1944);
        break;
    default:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 120);
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 160);
        break;
    }


    timer->start(33);
}

void MainWindow::readFarme()
{
    frame = cvQueryFrame(cam);
    if (frame != nullptr) {
        IplImage *buffer = cvCreateImage(cvGetSize(frame), 8, 3);

        cvCvtColor(frame, buffer, CV_BGR2RGB);
        QImage image((const uchar*)buffer->imageData, buffer->width, buffer->height, QImage::Format_RGB888);
        ui->lblImageView->setPixmap(QPixmap::fromImage(image));
        cvReleaseImage(&buffer);

        m_fps++;
        clock_t endTime = clock();
        if(endTime - m_startTime > CLOCKS_PER_SEC)
        {
            //double fps = double(endTime - startTime) / double(CLOCKS_PER_SEC);
            QString sFPS, sResolution;
            sFPS.sprintf("FPS: %d", m_fps);
            sResolution.sprintf("Resolution: %d x %d", image.size().width(), image.size().height());
            qInfo() << sFPS;
            qInfo() << sResolution;
            ui->lblResolution->setText(sResolution);
            ui->lblFPS->setText(sFPS);
            m_fps = 0;
            m_startTime = clock();
        }
    }
}

void MainWindow::takingPictures()
{
    frame = cvQueryFrame(cam);
    IplImage *buffer = cvCreateImage(cvGetSize(frame), 8, 3);

    cvCvtColor(frame, buffer, CV_BGR2RGB);
//    cvSaveImage("D:\\capture.jpg", frame);
    QImage image((const uchar*)buffer->imageData, buffer->width, buffer->height, QImage::Format_RGB888);

    const QStringList desktopLocation = QStandardPaths::standardLocations(QStandardPaths::DesktopLocation);
    QString desktopLPath = QString("%1").arg(desktopLocation.first());
    QFile file(desktopLPath + "\\capture.png");
    file.open(QIODevice::WriteOnly);
//    QDataStream out(&file);
    bool isSuccessful = image.save(file.fileName(), "PNG", 100);
    qDebug() << "cvSaveImage(), " << desktopLPath << "\\capture.png, isSuccessful = " << isSuccessful;
    cvReleaseImage(&buffer);
    //ui->label_2->setPixmap(QPixmap::fromImage(image));
}

void MainWindow::closeCamara()
{
    if (timer != nullptr)
        timer->stop();

    if (cam != nullptr)
        cvReleaseCapture(&cam);
}
