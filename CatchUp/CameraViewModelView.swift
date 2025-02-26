//
//  CameraViewModelView.swift
//  CatchUp
//
//  Created by Noor Marwaha on 25/2/2025.
//

import Foundation
import Combine

class CameraViewModel: ObservableObject {
    @Published var isRecording = false

    func toggleRecording() {
        isRecording.toggle()
    }
}
