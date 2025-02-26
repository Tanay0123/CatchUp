//
//  CameraView.swift
//  CatchUp
//
//  Created by Noor Marwaha on 25/2/2025.
//

 
import SwiftUI
import AVFoundation
import Photos

struct CameraView: UIViewControllerRepresentable {
    @ObservedObject var cameraViewModel: CameraViewModel

    func makeUIViewController(context: Context) -> CameraViewController {
        let controller = CameraViewController()
        controller.cameraViewModel = cameraViewModel
        return controller
    }

    func updateUIViewController(_ uiViewController: CameraViewController, context: Context) {}
}

// MARK: - CameraViewController (Handles Video Recording)
class CameraViewController: UIViewController, AVCaptureFileOutputRecordingDelegate {
    var captureSession: AVCaptureSession!
    var videoOutput: AVCaptureMovieFileOutput!
    var previewLayer: AVCaptureVideoPreviewLayer!
    var cameraViewModel: CameraViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCamera()
    }

    private func setupCamera() {
        captureSession = AVCaptureSession()
        captureSession.sessionPreset = .high

        guard let device = AVCaptureDevice.default(for: .video),
              let input = try? AVCaptureDeviceInput(device: device) else {
            print("❌ Unable to access camera")
            return
        }

        captureSession.addInput(input)

        videoOutput = AVCaptureMovieFileOutput()
        captureSession.addOutput(videoOutput)

        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.videoGravity = .resizeAspectFill
        previewLayer.frame = view.layer.bounds
        view.layer.addSublayer(previewLayer)

        captureSession.startRunning()

        // Start recording automatically
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.startRecording()
        }
    }

    // MARK: - Start Recording
    func startRecording() {
        guard let cameraViewModel = cameraViewModel else { return }
        
        if !videoOutput.isRecording {
            let fileURL = FileManagerHelper.shared.getTodayVideoFileURL()
            videoOutput.startRecording(to: fileURL, recordingDelegate: self)
            cameraViewModel.isRecording = true
        }
    }

    // MARK: - Stop Recording
    func stopRecording() {
        guard let cameraViewModel = cameraViewModel else { return }
        
        if videoOutput.isRecording {
            videoOutput.stopRecording()
            cameraViewModel.isRecording = false
        }
    }

    // MARK: - Handle Recording Completion
    func fileOutput(_ output: AVCaptureFileOutput, didFinishRecordingTo outputFileURL: URL, from connections: [AVCaptureConnection], error: Error?) {
        if let error = error {
            print("❌ Recording error:", error.localizedDescription)
        } else {
            print("✅ Video recorded at:", outputFileURL.path)
            saveToPhotosLibrary(videoURL: outputFileURL)
        }
    }

    // MARK: - Save Video to Photos Library
    private func saveToPhotosLibrary(videoURL: URL) {
        requestPhotoLibraryPermission { granted in
            guard granted else {
                print("❌ Permission to save video denied.")
                return
            }

            DispatchQueue.main.async {
                PHPhotoLibrary.shared().performChanges({
                    let creationRequest = PHAssetCreationRequest.forAsset()
                    creationRequest.addResource(with: .video, fileURL: videoURL, options: nil)
                }) { success, error in
                    if success {
                        print("✅ Video successfully saved to Photos!")
                    } else {
                        print("❌ Error saving to Photos:", error?.localizedDescription ?? "Unknown error")
                    }
                }
            }
        }
    }

    // MARK: - Request Photo Library Permission
    private func requestPhotoLibraryPermission(completion: @escaping (Bool) -> Void) {
        let status = PHPhotoLibrary.authorizationStatus()

        switch status {
        case .notDetermined:
            PHPhotoLibrary.requestAuthorization { newStatus in
                DispatchQueue.main.async {
                    completion(newStatus == .authorized || newStatus == .limited)
                }
            }
        case .authorized, .limited:
            completion(true)
        default:
            completion(false)
        }
    }
}



