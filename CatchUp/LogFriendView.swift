//
//  LogContactView.swift
//  CatchUp
//
//  Created by Oscar Mac on 24/2/2025.
//

import SwiftUI

struct LogFriendView: View {
    // MARK: - Properties
    @Environment(\.dismiss) private var dismiss
    @Binding var isPresented:Bool
    // MARK: - Body
    var body: some View {
        
        NavigationStack {
            Spacer()
            NavigationLink {
                LogActivityView(isPresented: $isPresented).navigationBarBackButtonHidden(true)
            } label: {
                Text("Next")
                    .fontDesign(.rounded)
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .foregroundStyle(Color(.buttonText))
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
//            .navigationTitle("Add Catch Up")
//            .navigationBarTitleDisplayMode(.inline)
            
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    
//                    Button {
//                        // 3
//                        dismiss()
//                        
//                    } label: {
//                        // 4
//                        
//                            
//                            Image(systemName: "xmark")
//                            
//                            
//                        
//                    }.buttonStyle(.bordered)
//                        .foregroundStyle(Color.buttonText)
//                        .fontWeight(.medium)
//                        .fontDesign(.rounded)
//                        
//                        .clipShape(Circle())
//                }
//            }
        }
    }
}

//#Preview {
//    LogFriendView(isPresented: $isPresented)
//}
