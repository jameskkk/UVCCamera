1. Get numbers of cameras
CVAPI(int) cvGetCameraDeviceCount();

2. Get camera device name
CVAPI(wchar_t *) cvGetCameraDeviceName(int deviceId, wchar_t *deviceName);

3. Get camera device VID/PID
CVAPI(wchar_t *) cvGetCameraDeviceHardwareIds(int deviceId, wchar_t *vid, wchar_t *pid);

4. Open Camera via VID/PID
   CvCapture *cvCaptureFromCAMIds(const wchar_t *vid, const wchar_t *pid)

Example1 :
int cameraCount = cvGetCameraDeviceCount();
for (int i = 0; i < cameraCount; i++) {
	wchar_t deviceName[MAX_PATH] = { 0 };
	wchar_t vid[5] = { 0 };
	wchar_t pid[5] = { 0 };
	cvGetCameraDeviceName(i, deviceName);
	cvGetCameraDeviceHardwareIds(i, vid, pid);
	wprintf(L"Camera Name[%d]: %s\n", i, deviceName);
	wprintf(L"Camera VID: %s, PID: %s\n", vid, pid);
}

Example2 :
CvCapture *cap = cvCaptureFromCAMIds(L"046D", L"0826"); // Instead of cvCaptureFromCAM

