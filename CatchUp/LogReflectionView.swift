//
//  LogReflectionView.swift
//  CatchUp
//
//  Created by Oscar Mac on 24/2/2025.
//

import SwiftUI

struct LogReflectionView: View {
    // MARK: - Properties
    @Binding var isPresented:Bool
    @Environment(\.dismiss) private var dismiss
    
    
    // MARK: - Body
    var body: some View {
        
            Spacer()
            Button {
                isPresented.toggle()
            } label: {
                Text("Done")
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
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    Button {
                        // 3
                        dismiss()
                        
                    } label: {
                        // 4
                        
                            
                            Image(systemName: "chevron.left")
                            
                            
                        
                    }.buttonStyle(.bordered)
                        .foregroundStyle(Color.buttonText)
                        .fontWeight(.medium)
                        .fontDesign(.rounded)
                        
                        .clipShape(Circle())
                }
            }
        
    }
}
//#Preview {
//    LogFeelingView(isPresented: $isPresented)
//}
