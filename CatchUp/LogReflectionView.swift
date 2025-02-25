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
        
        VStack {
            HStack {
                Text("Excited because...")
                Spacer()
                Image(systemName: "pencil")
                    .foregroundColor(.blue)
            }
            
            .padding(.horizontal, 30)
            .padding(.top, 40)
            
            Spacer()
            
            HStack {
                NavigationLink {
                    Text("This is camera page")
                } label: { Image(systemName: "plus.circle.dashed")
                }
                Spacer()
                
                NavigationLink {
                    Text("This is camera page")
                } label: {
                    Image(systemName: "camera")
                }
                
                Spacer()
                
                NavigationLink {
                    Text("This is camera page")
                } label: {
                    Image(systemName: "photo.on.rectangle")
                }
                
                Spacer()
                
                NavigationLink {
                    Text("This is camera page")
                } label: {
                    Image(systemName: "waveform")
                }
                
                Spacer()
                
                NavigationLink {
                    Text("This is camera page")
                } label: {
                    Image(systemName: "microphone")
                }
                
            }
            
            .padding(.horizontal, 30)
            .padding(.bottom, 80)
            
            
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
}
//#Preview {
//    LogFeelingView(isPresented: $isPresented)
//}
