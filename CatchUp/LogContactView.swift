//
//  LogContactView.swift
//  CatchUp
//
//  Created by Oscar Mac on 24/2/2025.
//

import SwiftUI

struct LogContactView: View {
    // MARK: - Properties
    @Environment(\.dismiss) private var dismiss
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
// .navigationBarBackButtonHidden(true)
// - Add button with sf symbols x topbar (leading)

#Preview {
    LogContactView()
}
