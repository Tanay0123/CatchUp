//
//  OnBoardView.swift
//  CatchUp
//
//  Created by Elly on 25/2/2025.
//

import SwiftUI

struct OnBoardView: View {
    var body: some View {
        Spacer()
        Button {
            
        } label: {
            Text("Start")
                .fontDesign(.rounded)
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
        }
        .padding()
        .foregroundStyle(Color.buttonText)
        .buttonStyle(.bordered)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
    }
}

#Preview {
    OnBoardView()
}
