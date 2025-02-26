//
//  RecordingButton.swift
//  CatchUp
//
//  Created by Noor Marwaha on 25/2/2025.
//

import SwiftUI

struct Recording: View {
    @StateObject var cameraViewModel = CameraViewModel()

    var body: some View {
        ZStack {
            Image("color_background")
                .resizable()
                .edgesIgnoringSafeArea(.all)

            Image("mirror")

            VStack {
                CameraView(cameraViewModel: cameraViewModel)
                   // .frame(width: 300, height: 400)
                   // .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button(action: {
                    if cameraViewModel.isRecording {
                        cameraViewModel.isRecording = false
                    } else {
                        cameraViewModel.isRecording = true
                    }
                }) {
                    Image(systemName: cameraViewModel.isRecording ? "stop.circle.fill" : "record.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(cameraViewModel.isRecording ? .red : .white)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    Recording()
}

