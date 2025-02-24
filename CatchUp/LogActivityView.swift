//
//  LogActivityView.swift
//  CatchUp
//
//  Created by Oscar Mac on 24/2/2025.
//

import SwiftUI

struct LogActivityView: View {
    // MARK: - Properties
    @Environment(\.dismiss) private var dismiss
    @State private var catchUpType:String = ""
    
    // MARK: - Body
    var body: some View {
        
        NavigationStack {
            Spacer()
            NavigationLink {
                LogActivityView()
            } label: {
                Text("Next")
                    .fontDesign(.rounded)
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
    }
}
#Preview {
    LogActivityView()
}
