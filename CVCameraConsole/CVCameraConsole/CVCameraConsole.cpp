// CVCamera.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <opencv2/opencv.hpp>
#include <opencv2/core/utils/logger.hpp>

using namespace std;
using namespace cv;

//int OldCameraAPI(int cameraID) {
//	CvCapture *cap = NULL;
//	cap = cvCreateCameraCapture(cameraID);
//	if (cap == NULL) {
//		cout << "Cannot open camera\n";
//		system("PAUSE");
//		return 1;
//	}
//
//	IplImage *frame;
//	IplImage *gray;
//	cvSetCaptureProperty(cap, CV_CAP_PROP_FRAME_WIDTH, 160);
//	cvSetCaptureProperty(cap, CV_CAP_PROP_FRAME_HEIGHT, 120);
//	cvSetCaptureProperty(cap, CV_CAP_PROP_CONVERT_RGB, 0);
//	int value = cvGetCaptureProperty(cap, CV_CAP_PROP_CONVERT_RGB);
//	cout << "CV_CAP_PROP_CONVERT_RGB = " << value << endl;
//
//	while (true) {
//		frame = cvQueryFrame(cap);
//		if (frame == NULL) {
//			cout << "Can't receive frame (stream end?). Exiting ...\n";
//			break;
//		}
//
//		if (cvGetCaptureProperty(cap, CV_CAP_PROP_CONVERT_RGB) == 1) {
//			//Mat imageDecode = imdecode(frame, IMREAD_COLOR);
//			cvShowImage("live Decode", frame);
//		}
//		else {
//			//gray = cvCreateImage(cvGetSize(frame), 8, 3);
//			gray = cvCloneImage(frame);
//			// �m����Ƕ�
//			//cvCvtColor(frame, gray, COLOR_BGR2GRAY);
//			// ��ܹϤ�
//			cvShowImage("live Color", frame);
//			cvShowImage("live Gray", gray);
//		}
//
//		// ���U q �����}�j��
//		if (cvWaitKey(1) == 'q') {
//			break;
//		}
//	}
//	cvReleaseCapture(&cap);
//	cvDestroyAllWindows();
//	cvReleaseImage(&frame);
//	cvReleaseImage(&gray);
//
//	return 0;
//}

int NewCameraAPI(int cameraID) {
	VideoCapture cap(cameraID, CAP_MSMF);
	//cap.open(cameraID);
	if (!cap.isOpened()) {
		cout << "Cannot open camera\n";
		system("PAUSE");
		return 1;
	}

	Mat frame;
	Mat gray;
	// Before OpenCV 4
	/*cap.set(CV_CAP_PROP_FRAME_WIDTH, 160);
	cap.set(CV_CAP_PROP_FRAME_HEIGHT, 120);
	cap.set(CV_CAP_PROP_CONVERT_RGB, 0);
	int value = cap.get(CV_CAP_PROP_CONVERT_RGB);*/
	cap.set(CAP_PROP_FRAME_WIDTH, 160);
	cap.set(CAP_PROP_FRAME_HEIGHT, 120);
	cap.set(CAP_PROP_CONVERT_RGB, 0);
	int value = cap.get(CAP_PROP_CONVERT_RGB);
	cout << "CV_CAP_PROP_CONVERT_RGB = " << value << endl;

	//namedWindow("live", WINDOW_AUTOSIZE); // �R�W�@�ӵ����A�i���g
	while (true) {
		// �^���v��
		bool ret = cap.read(frame); // or cap >> frame;
		if (!ret) {
			cout << "Can't receive frame (stream end?). Exiting ...\n";
			break;
		}

		if (cap.get(CAP_PROP_CONVERT_RGB) == 1) {
			Mat imageDecode = imdecode(frame, IMREAD_COLOR);
			imshow("live Decode", frame);
		}
		else {
			// �m����Ƕ�
			cvtColor(frame, gray, COLOR_BGR2GRAY);
			// ��ܹϤ�
			imshow("live Color", frame);
			imshow("live Gray", gray);
		}

		// ���U q �����}�j��
		if (waitKey(1) == 'q') {
			break;
		}
	}

	// VideoCapture �|�۰ʦb�Ѻc�l������귽
	cap.release();
	destroyAllWindows();

	return 0;
}

int main() {
	cv::utils::logging::setLogLevel(utils::logging::LOG_LEVEL_VERBOSE); // Open OpenCV Debug log

	//OldCameraAPI(1);
	NewCameraAPI(1);

	system("PAUSE");
	return 0;
}

