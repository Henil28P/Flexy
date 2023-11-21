//
//  CameraView.swift
//  Flexy
//
//  Created by Si Thu on 21/11/2023.
//

import SwiftUI
import AVFoundation

struct CameraView: UIViewRepresentable {
    @Binding var feedbackText: String

    class Coordinator: NSObject, AVCaptureVideoDataOutputSampleBufferDelegate {
        var parent: CameraView

        init(parent: CameraView) {
            self.parent = parent
        }

        func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
            // Process the captured frames here
            DispatchQueue.main.async {
                // Update the feedback text dynamically
                self.parent.feedbackText = "Processing frames..."
            }
        }
    }

    let captureSession = AVCaptureSession()

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    func makeUIView(context: Context) -> UIView {
        let view = UIView()

        // Setup the camera capture session
        if let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front),
            let input = try? AVCaptureDeviceInput(device: device) {
            if captureSession.canAddInput(input) {
                captureSession.addInput(input)
            }
        }

        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer.frame = view.layer.bounds
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer)

        let output = AVCaptureVideoDataOutput()
        output.setSampleBufferDelegate(context.coordinator, queue: DispatchQueue(label: "cameraQueue"))
        if captureSession.canAddOutput(output) {
            captureSession.addOutput(output)
        }

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        if !captureSession.isRunning {
            captureSession.startRunning()
        }
    }
}

struct RealTimeFeedbackScreen: View {
    @State private var feedbackText = "Camera is capturing frames..."

    var body: some View {
        VStack {
            CameraView(feedbackText: $feedbackText)
                .frame(height: 300)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
                .padding()
                .background(Color.black)
                .cornerRadius(10)

            Text(feedbackText)
                .foregroundColor(.white)
                .padding()
        }
        .padding()
    }
}

struct RealTimeFeedbackScreen_Previews: PreviewProvider {
    static var previews: some View {
        RealTimeFeedbackScreen()
    }
}
