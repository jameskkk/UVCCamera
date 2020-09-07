#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QFile>
#include <QStandardPaths>
#include <QMessageBox>
//#include <QMediaRecorder>
//#include <QCameraInfo>
//#include <QMediaMetaData>
#include <QScreen>

#ifdef _WIN32
#include <windows.h>
#endif


MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    #ifdef _WIN32
    if (AllocConsole()) {
        qDebug() << "AllocConsole()...";
        freopen("CONOUT$", "w", stdout);
    }
    #endif

    QScreen *screen = QGuiApplication::primaryScreen();
    QRect screenGeometry = screen->geometry();
    int height = screenGeometry.height();
    int width = screenGeometry.width();
    qDebug() << "Screen Size: " << width << " x " << height;

//    wchar_t VID[] = L"0BDA";
//    wchar_t PID[] = L"57B4";
//    CvCapture *cap = cvCaptureFromCAMIds(VID, PID);

    ui->txtPropID->setPlainText("CV_CAP_PROP_FOCUS");
    ui->txtPropVal->setPlainText("300");

    ui->txtPropID2->setPlainText("CV_CAP_PROP_FOCUS");
    ui->txtPropVal2->setPlainText("300");

    // Camera devicesmenuDevices by QCameraInfo
//    foreach (const QCameraInfo &cameraInfo, QCameraInfo::availableCameras()) {
//        QString description = cameraInfo.description();
//        QString deviceName = cameraInfo.deviceName();
//        qDebug() << "description = " << description;
//        qDebug() << "deviceName = " << deviceName;
//    }

    // Camera enum by OpenCV
    int cameraDeviceCount =  cvGetCameraDeviceCount(); // get numbers of cameras
    qDebug() << "CameraDeviceCount: " << cameraDeviceCount;
    for (int i = 0; i < cameraDeviceCount; i++) {
        wchar_t cameraDeviceName[256] = { 0 };
        cvGetCameraDeviceName(i, cameraDeviceName);
        QString sCameraDeviceName = QString::fromWCharArray(cameraDeviceName);
        qDebug() << "CameraDeviceName : " << sCameraDeviceName;

        ui->comboBoxCam->addItem(sCameraDeviceName);
        if (sCameraDeviceName.contains("ColorAiO_Top") || sCameraDeviceName.contains("XYZscan Color AiO Top Camera")) {
            ui->comboBoxCam->setCurrentIndex(i);
        }

        ui->comboBoxCam2->addItem(sCameraDeviceName);
        if (sCameraDeviceName.contains("ColorAiO_Bottom") || sCameraDeviceName.contains("XYZscan Color AiO Bottom Camera")) {
            ui->comboBoxCam2->setCurrentIndex(i);
        }
    }

//    ui->comboBoxCam->insertItem(0, tr("0"));
//    ui->comboBoxCam->insertItem(1, tr("1"));
//    ui->comboBoxCam->insertItem(2, tr("2"));
//    ui->comboBoxCam->insertItem(3, tr("3"));
//    ui->comboBoxCam->setCurrentIndex(0);

//    ui->comboBoxCam2->insertItem(0, tr("0"));
//    ui->comboBoxCam2->insertItem(1, tr("1"));
//    ui->comboBoxCam2->insertItem(2, tr("2"));
//    ui->comboBoxCam2->insertItem(3, tr("3"));
//    ui->comboBoxCam2->setCurrentIndex(1);

    ui->comboBoxResolution->insertItem(0, tr("640x480"));
    ui->comboBoxResolution->insertItem(1, tr("1600x1200"));
    ui->comboBoxResolution->insertItem(2, tr("1920x1080"));
    ui->comboBoxResolution->insertItem(3, tr("2048x1536"));
    ui->comboBoxResolution->insertItem(4, tr("2592x1944"));
    ui->comboBoxResolution->setCurrentIndex(4);

    ui->comboBoxResolution2->insertItem(0, tr("640x480"));
    ui->comboBoxResolution2->insertItem(1, tr("1600x1200"));
    ui->comboBoxResolution2->insertItem(2, tr("1920x1080"));
    ui->comboBoxResolution2->insertItem(3, tr("2048x1536"));
    ui->comboBoxResolution2->insertItem(4, tr("2592x1944"));
    ui->comboBoxResolution2->setCurrentIndex(4);

    ui->comboBoxFPS->insertItem(0, tr("5  fps"));
    ui->comboBoxFPS->insertItem(1, tr("10 fps"));
    ui->comboBoxFPS->insertItem(2, tr("15 fps"));
    ui->comboBoxFPS->setCurrentIndex(2);

    ui->comboBoxFPS2->insertItem(0, tr("5  fps"));
    ui->comboBoxFPS2->insertItem(1, tr("10 fps"));
    ui->comboBoxFPS2->insertItem(2, tr("15 fps"));
    ui->comboBoxFPS2->setCurrentIndex(2);

    cam     = NULL;
    timer   = new QTimer(this);
    imag    = new QImage();

    connect(timer, SIGNAL(timeout()), this, SLOT(readFrame()));
    connect(ui->btnStart, SIGNAL(clicked()), this, SLOT(openCamara()));
    connect(ui->btnCapture, SIGNAL(clicked()), this, SLOT(takingPictures()));
    connect(ui->btnStop, SIGNAL(clicked()), this, SLOT(closeCamara()));

    cam2     = NULL;
    timer2   = new QTimer(this);
    imag2    = new QImage();

    connect(timer2, SIGNAL(timeout()), this, SLOT(readFrame2()));
    connect(ui->btnStart2, SIGNAL(clicked()), this, SLOT(openCamara2()));
    connect(ui->btnCapture2, SIGNAL(clicked()), this, SLOT(takingPictures2()));
    connect(ui->btnStop2, SIGNAL(clicked()), this, SLOT(closeCamara2()));
}

MainWindow::~MainWindow()
{
    #ifdef _WIN32    //George add in 20180221
        if (FreeConsole()) {
            qDebug() << "FreeConsole()...";
        }
    #endif

    closeCamara();
    if (timer != NULL) {
        delete timer;
        timer = NULL;
    }
    if (imag != NULL) {
        delete imag;
        imag = NULL;
    }

    closeCamara2();
    if (timer2 != NULL) {
        delete timer2;
        timer2 = NULL;
    }
    if (imag2 != NULL) {
        delete imag2;
        imag2 = NULL;
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
    cvSetCaptureProperty(cam, CV_CAP_PROP_FOURCC, CV_FOURCC('M','J','P','G'));
    switch (ui->comboBoxResolution->currentIndex()) {
    case 1:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 1600);
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 1200);
        break;
    case 2:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 1920);
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 1080);
        break;
    case 3:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 2048);
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 1536);
        break;
    case 4:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 2592);
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 1944);

        // For Fangtec
//        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 640);
//        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 480);
        break;
    default:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 640);
        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 480);
        break;
    }

    switch (ui->comboBoxFPS->currentIndex()) {
    case 1:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FPS, 10);
        break;
    case 2:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FPS, 15);
        break;
    default:
        cvSetCaptureProperty(cam, CV_CAP_PROP_FPS, 5);
        break;
    }

    QString camInfo;
    camInfo.sprintf("Framae size: %.1f x %.1f - %.1f FPS", cvGetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH), cvGetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT), cvGetCaptureProperty(cam, CV_CAP_PROP_FPS));
    qDebug() << camInfo;
    //qDebug() << QString("Framae size: %1 x %2 - %3 FPS\n").arg(cvGetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH), cvGetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT), cvGetCaptureProperty(cam, CV_CAP_PROP_FPS));

    timer->start(33);
}

void MainWindow::readFrame()
{
    frame = cvQueryFrame(cam);
    // For Fangtec
//    if (frame == NULL && ui->comboBoxResolution->currentIndex() == 2) {
//        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_WIDTH, 2592);
//        cvSetCaptureProperty(cam, CV_CAP_PROP_FRAME_HEIGHT, 1944);
//        cvSetCaptureProperty(cam, CV_CAP_PROP_FPS, 5);
//    }

    if (frame != NULL) {
        IplImage *buffer = cvCreateImage(cvGetSize(frame), 8, 3);

        cvCvtColor(frame, buffer, CV_BGR2RGB);
        QImage image((const uchar*)buffer->imageData, buffer->width, buffer->height, QImage::Format_RGB888);
        QImage smallImage = image.scaled(ui->lblImageView->width(), ui->lblImageView->height(), Qt::KeepAspectRatio);
        ui->lblImageView->setPixmap(QPixmap::fromImage(smallImage));
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
//    cvSaveImage("D:\\capture1.jpg", frame);
    QImage image((const uchar*)buffer->imageData, buffer->width, buffer->height, QImage::Format_RGB888);

    const QStringList desktopLocation = QStandardPaths::standardLocations(QStandardPaths::DesktopLocation);
    QString desktopLPath = QString("%1").arg(desktopLocation.first());
    QFile file(desktopLPath + "/capture1.png");
    file.open(QIODevice::WriteOnly);
//    QDataStream out(&file);
    bool isSuccessful = image.save(file.fileName(), "PNG", 100);
    qDebug() << "cvSaveImage(), " << desktopLPath << "/capture.png, isSuccessful = " << isSuccessful;
    cvReleaseImage(&buffer);
    //ui->label_2->setPixmap(QPixmap::fromImage(image));
}

void MainWindow::closeCamara()
{
    if (timer != NULL)
        timer->stop();

    if (cam != NULL)
        cvReleaseCapture(&cam);
}

void MainWindow::on_btnSettings_clicked()
{
    int cameraId = ui->comboBoxCam->currentIndex();
    qDebug() << "cameraId = " << cameraId;
    if (cam != NULL)
        cvSetCaptureProperty(cam, CV_CAP_PROP_SETTINGS, 0);
    else
        QMessageBox::critical(this, tr("Error"), tr("Camera 1 is not opened!"));
}

// Camera 2

void MainWindow::openCamara2()
{
    m_fps2 = 0;
    m_startTime2 = clock();
    int cameraId = ui->comboBoxCam2->currentIndex();
    qDebug() << "cameraId = " << cameraId;
    cam2 = cvCreateCameraCapture(cameraId);
    cvSetCaptureProperty(cam2, CV_CAP_PROP_FOURCC, CV_FOURCC('M','J','P','G'));
    switch (ui->comboBoxResolution2->currentIndex()) {
    case 1:
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_WIDTH, 1600);
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_HEIGHT, 1200);
        break;
    case 2:
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_WIDTH, 1920);
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_HEIGHT, 1080);
        break;
    case 3:
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_WIDTH, 2048);
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_HEIGHT, 1536);
        break;
    case 4:
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_WIDTH, 2592);
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_HEIGHT, 1944);

        // For Fangtec
//        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_WIDTH, 640);
//        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_HEIGHT, 480);
        break;
    default:
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_WIDTH, 640);
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_HEIGHT, 480);
        break;
    }

    switch (ui->comboBoxFPS2->currentIndex()) {
    case 1:
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FPS, 10);
        break;
    case 2:
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FPS, 15);
        break;
    default:
        cvSetCaptureProperty(cam2, CV_CAP_PROP_FPS, 5);
        break;
    }

    QString camInfo;
    camInfo.sprintf("Framae size: %.1f x %.1f - %.1f FPS", cvGetCaptureProperty(cam2, CV_CAP_PROP_FRAME_WIDTH), cvGetCaptureProperty(cam2, CV_CAP_PROP_FRAME_HEIGHT), cvGetCaptureProperty(cam2, CV_CAP_PROP_FPS));
    qDebug() << camInfo;
    //qDebug() << QString("Framae size: %1 x %2 - %3 FPS\n").arg(cvGetCaptureProperty(cam2, CV_CAP_PROP_FRAME_WIDTH), cvGetCaptureProperty(cam2, CV_CAP_PROP_FRAME_HEIGHT), cvGetCaptureProperty(cam2, CV_CAP_PROP_FPS));

    timer2->start(33);
}

void MainWindow::readFrame2()
{
    frame2 = cvQueryFrame(cam2);
    // For Fangtec
//    if (frame2 == NULL && ui->comboBoxResolution2->currentIndex() == 2) {
//        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_WIDTH, 2592);
//        cvSetCaptureProperty(cam2, CV_CAP_PROP_FRAME_HEIGHT, 1944);
//        cvSetCaptureProperty(cam2, CV_CAP_PROP_FPS, 5);
//    }

    if (frame2 != NULL) {
        IplImage *buffer = cvCreateImage(cvGetSize(frame2), 8, 3);

        cvCvtColor(frame2, buffer, CV_BGR2RGB);
        QImage image((const uchar*)buffer->imageData, buffer->width, buffer->height, QImage::Format_RGB888);
        QImage smallImage = image.scaled(ui->lblImageView2->width(), ui->lblImageView2->height(), Qt::KeepAspectRatio);
        ui->lblImageView2->setPixmap(QPixmap::fromImage(smallImage));
        cvReleaseImage(&buffer);

        m_fps2++;
        clock_t endTime = clock();
        if(endTime - m_startTime2 > CLOCKS_PER_SEC)
        {
            //double fps = double(endTime - startTime) / double(CLOCKS_PER_SEC);
            QString sFPS, sResolution;
            sFPS.sprintf("FPS: %d", m_fps2);
            sResolution.sprintf("Resolution: %d x %d", image.size().width(), image.size().height());
            qInfo() << sFPS;
            qInfo() << sResolution;
            ui->lblResolution2->setText(sResolution);
            ui->lblFPS2->setText(sFPS);
            m_fps2 = 0;
            m_startTime2 = clock();
        }
    }
}

void MainWindow::takingPictures2()
{
    frame2 = cvQueryFrame(cam2);
    IplImage *buffer = cvCreateImage(cvGetSize(frame2), 8, 3);

    cvCvtColor(frame2, buffer, CV_BGR2RGB);
//    cvSaveImage("D:\\capture2.jpg", frame);
    QImage image((const uchar*)buffer->imageData, buffer->width, buffer->height, QImage::Format_RGB888);

    const QStringList desktopLocation = QStandardPaths::standardLocations(QStandardPaths::DesktopLocation);
    QString desktopLPath = QString("%1").arg(desktopLocation.first());
    QFile file(desktopLPath + "/capture2.png");
    file.open(QIODevice::WriteOnly);
//    QDataStream out(&file);
    bool isSuccessful = image.save(file.fileName(), "PNG", 100);
    qDebug() << "cvSaveImage(), " << desktopLPath << "/capture.png, isSuccessful = " << isSuccessful;
    cvReleaseImage(&buffer);
    //ui->label_2->setPixmap(QPixmap::fromImage(image));
}

void MainWindow::closeCamara2()
{
    if (timer2 != NULL)
        timer2->stop();

    if (cam2 != NULL)
        cvReleaseCapture(&cam2);
}

void MainWindow::on_btnSettings2_clicked()
{
    int cameraId = ui->comboBoxCam2->currentIndex();
    qDebug() << "cameraId = " << cameraId;
    if (cam2 != NULL)
        cvSetCaptureProperty(cam2, CV_CAP_PROP_SETTINGS, 0);
    else
        QMessageBox::critical(this, tr("Error"), tr("Camera 2 is not opened!"));
}

int MainWindow::CameraPropString2Id(const QString &str)
{
   if (str.compare("CV_CAP_PROP_FRAME_WIDTH") == 0)
      return CV_CAP_PROP_FRAME_WIDTH;     // 3
   else if (str.compare("CV_CAP_PROP_FRAME_HEIGHT") == 0)
      return CV_CAP_PROP_FRAME_HEIGHT;    // 4
   else if (str.compare("CV_CAP_PROP_FPS") == 0)
      return CV_CAP_PROP_FPS;             // 5
   else if (str.compare("CV_CAP_PROP_FOURCC") == 0)
      return CV_CAP_PROP_FOURCC;          // 6
   else if (str.compare("CV_CAP_PROP_FRAME_COUNT") == 0)
      return CV_CAP_PROP_FRAME_COUNT;     // 7
   else if (str.compare("CV_CAP_PROP_FORMAT") == 0)
      return CV_CAP_PROP_FORMAT;          // 8
   else if (str.compare("CV_CAP_PROP_MODE") == 0)
      return CV_CAP_PROP_MODE;            // 9
   else if (str.compare("CV_CAP_PROP_BRIGHTNESS") == 0)
      return CV_CAP_PROP_BRIGHTNESS;      // 10
   else if (str.compare("CV_CAP_PROP_CONTRAST") == 0)
      return CV_CAP_PROP_CONTRAST;        // 11
   else if (str.compare("CV_CAP_PROP_SATURATION") == 0)
      return CV_CAP_PROP_SATURATION;      // 12
   else if (str.compare("CV_CAP_PROP_HUE") == 0)
      return CV_CAP_PROP_HUE;             // 13
   else if (str.compare("CV_CAP_PROP_GAIN") == 0)
      return CV_CAP_PROP_GAIN;            // 14
   else if (str.compare("CV_CAP_PROP_EXPOSURE") == 0)
      return CV_CAP_PROP_EXPOSURE;        // 15
   else if (str.compare("CV_CAP_PROP_CONVERT_RGB") == 0)
      return CV_CAP_PROP_CONVERT_RGB;     // 16
   else if (str.compare("CV_CAP_PROP_WHITE_BALANCE_U") == 0)
      return CV_CAP_PROP_WHITE_BALANCE_U; // 17
   else if (str.compare("CV_CAP_PROP_RECTIFICATION") == 0)
      return CV_CAP_PROP_RECTIFICATION;   // 18
   else if (str.compare("CV_CAP_PROP_MONOCROME") == 0)
      return CV_CAP_PROP_MONOCROME;       // 19
   else if (str.compare("CV_CAP_PROP_SHARPNESS") == 0)
      return CV_CAP_PROP_SHARPNESS;       // 20
   else if (str.compare("CV_CAP_PROP_AUTO_EXPOSURE") == 0)
      return CV_CAP_PROP_AUTO_EXPOSURE;   // 21
   else if (str.compare("CV_CAP_PROP_GAMMA") == 0)
      return CV_CAP_PROP_GAMMA;           // 22
   else if (str.compare("CV_CAP_PROP_FOCUS") == 0)
      return CV_CAP_PROP_FOCUS;           // 28
   else if (str.compare("CV_CAP_PROP_SETTINGS") == 0)
      return CV_CAP_PROP_SETTINGS;        // 37
   return -1; // -1 in case the parameter wasn't valid

// Not support
//   CV_CAP_PROP_TEMPERATURE   =23,
//   CV_CAP_PROP_TRIGGER       =24,
//   CV_CAP_PROP_TRIGGER_DELAY =25,
//   CV_CAP_PROP_WHITE_BALANCE_V =26,
//   CV_CAP_PROP_ZOOM          =27,
//   CV_CAP_PROP_GUID          =29,
//   CV_CAP_PROP_ISO_SPEED     =30,
//   CV_CAP_PROP_MAX_DC1394    =31,
//   CV_CAP_PROP_BACKLIGHT     =32,
//   CV_CAP_PROP_PAN           =33,
//   CV_CAP_PROP_TILT          =34,
//   CV_CAP_PROP_ROLL          =35,
//   CV_CAP_PROP_IRIS          =36,
//   CV_CAP_PROP_BUFFERSIZE    =38,
}

void MainWindow::on_btnSetCamProp_clicked()
{
//    cvSetCaptureProperty(cam, CV_CAP_PROP_AUTO_EXPOSURE, 0);
//    cvSetCaptureProperty(cam, CV_CAP_PROP_BRIGHTNESS, -64);
//    cvSetCaptureProperty(cam, CV_CAP_PROP_HUE, 0);

    if (cam != NULL && ui->txtPropID->toPlainText().compare("") != 0 && ui->txtPropVal->toPlainText().compare("") != 0) {
        cvSetCaptureProperty(cam, CameraPropString2Id(ui->txtPropID->toPlainText()), ui->txtPropVal->toPlainText().toDouble());
        qDebug() << "Camera 1 cvSetCaptureProperty() " << ui->txtPropID->toPlainText() << ", " << ui->txtPropVal->toPlainText();
    }
    else
        QMessageBox::critical(this, tr("Error"), tr("No Property!"));
}

void MainWindow::on_btnSetCamProp2_clicked()
{
    if (cam2 != NULL && ui->txtPropID2->toPlainText().compare("") != 0 && ui->txtPropVal2->toPlainText().compare("") != 0) {
        cvSetCaptureProperty(cam2, CameraPropString2Id(ui->txtPropID2->toPlainText()), ui->txtPropVal2->toPlainText().toDouble());
        qDebug() << "Camera 2 cvSetCaptureProperty() " << ui->txtPropID2->toPlainText() << ", " << ui->txtPropVal2->toPlainText();
    }
    else
        QMessageBox::critical(this, tr("Error"), tr("No Property!"));
}
