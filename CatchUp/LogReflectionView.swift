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
    @State private var textInputFromUser: String = ""
    @Environment(\.dismiss) private var dismiss
   
    @State private var isBold: Bool = false
    @State private var isUnderline: Bool = false
    @State private var isItalic: Bool = false
    @State private var isList: Bool = false
    
    
    // MARK: - Body
    var body: some View {
        // .background(Color(.beigeBackground))
        ZStack {
            //  .frame(maxWidth: .infinity)
            VStack {
                HStack {
                    Text("You're feeling pleasant because...")
                        .font(.system(size: 32))
                        .fontDesign(.rounded)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color(red: 1.0, green: 0.7, blue: 0.2))
                }
                .padding(.horizontal, 30)
                .padding(.top, 40)
                
                ScrollView {
                    TextField("User Input Here", text: $textInputFromUser, axis:.vertical)
                        .multilineTextAlignment(.leading)
                        .bold(isBold)
                        .underline(isUnderline)
                        .italic(isItalic)
                       // .textFieldStyle(.roundedBorder)
                    //                        .toolbar {
                    //                            ToolbarItemGroup(placement: .keyboard) {
                    //                                Button("Click me!") {
                    //                                    print("Clicked")
                    //                                Image(systemName: "camera")
                    //                                    Button("List") {
                    //                                        Image(systemName: "list.bullet")
                    //                                    }
                    //                                }
                    
                    
                    
//                                    .border(Color.gray, width: 1)
                        .padding(.horizontal, 30)
                        .padding(.top, 30)
                }
                
                
                Spacer()
                
                HStack {
                    NavigationLink {
//                        Recording()
                    } label: {
                        Image(systemName: "camera")
                            .scaledToFit()
                            .frame(height: 50, alignment: .leading)
                            .tint(Color(.orange))
                       
                    }
                    
                    Spacer()
                    
                    NavigationLink {
                        Text("This is gallery page")
                    } label: {
                        Image(systemName: "photo.on.rectangle")
                            .scaledToFit()
                            .frame(height: 50, alignment: .center)
                            .tint(Color(.orange))
                        
                    }
                    
                    Spacer()
                    
                    NavigationLink {
                        Text("This is voice-memo page")
                    } label: {
                        Image(systemName: "waveform")
                            .scaledToFit()
                            .frame(height: 50, alignment: .trailing)
                            .tint(Color(.orange))
                    }
                    
                }
                
                .padding(.horizontal, 30)
                .padding(.bottom, 15)
                
                
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
                .foregroundStyle(Color.white)
                .buttonStyle(.borderedProminent)
                .tint(Color(.orange))
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
            // .frame(maxWidth: .infinity, maxHeight: 500) // Set fixed height for scrollable box
            .background(Color.catchUpYellow.edgesIgnoringSafeArea(.all))
        }
    }
}
