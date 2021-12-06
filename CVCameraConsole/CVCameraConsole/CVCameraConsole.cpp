// CVCamera.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <opencv2/opencv.hpp>
#include <opencv2/core/utils/logger.hpp>

using namespace std;
using namespace cv;

int main() {
	cv::utils::logging::setLogLevel(utils::logging::LOG_LEVEL_VERBOSE); // Open OpenCV Debug log

	VideoCapture cap(1);
	if (!cap.isOpened()) {
		cout << "Cannot open camera\n";
		return 1;
	}

	Mat frame;
	Mat gray;
	cap.set(CV_CAP_PROP_FRAME_WIDTH, 160);
	cap.set(CV_CAP_PROP_FRAME_HEIGHT, 120);
	cap.set(CV_CAP_PROP_CONVERT_RGB, 0);
	int value = cap.get(CV_CAP_PROP_CONVERT_RGB);
	cout << "CV_CAP_PROP_CONVERT_RGB = " << value << endl;

	//namedWindow("live", WINDOW_AUTOSIZE); // �R�W�@�ӵ����A�i���g
	while (true) {
		// �^���v��
		bool ret = cap.read(frame); // or cap >> frame;
		if (!ret) {
			cout << "Can't receive frame (stream end?). Exiting ...\n";
			break;
		}

		if (cap.get(CV_CAP_PROP_CONVERT_RGB) == 1) {
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

