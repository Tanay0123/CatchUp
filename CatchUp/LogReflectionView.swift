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
                    Text("Excited because...")
                    Spacer()
                    Image(systemName: "book")
                        .foregroundColor(.blue)
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
                    Menu{
                        Button {
                            isItalic.toggle()
                        }
                        label: {
                            Image(systemName: "italic")
                            Text("Italic")
                                
                        }
                        Button {
                            isUnderline.toggle()
                        }
                        label: {
                            Image(systemName: "underline")
                            Text("Underline")
                                
                        }
                        Button {
                            isBold.toggle()
                        } label: {
                            Image(systemName: "bold")
                            Text("Bold")
                                
                        }
                        
                        Button {
                            isList.toggle()
                        } label: {
                            Image(systemName: "list.bullet")
                            Text("List")
                                
                        }

                    }
                    label: { Image(systemName: "plus.circle.dashed")
                    }
                    
                    Spacer()
                    
                    NavigationLink {
                        Recording()
                    } label: {
                        Image(systemName: "camera")
                    }
                    
                    Spacer()
                    
                    NavigationLink {
                        Text("This is gallery page")
                    } label: {
                        Image(systemName: "photo.on.rectangle")
                    }
                    
                    Spacer()
                    
                    NavigationLink {
                        Text("This is voice-memo page")
                    } label: {
                        Image(systemName: "waveform")
                    }
                    
                    //                    Spacer()
                    //
                    //                    NavigationLink {
                    //                        Text("This is camera page")
                    //                    } label: {
                    //                        Image(systemName: "microphone")
                    //                    }
                    
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
            // .frame(maxWidth: .infinity, maxHeight: 500) // Set fixed height for scrollable box
            .background(Color(.beigeBackground))
        }
    }
}

#Preview {
    LogReflectionView(isPresented: .constant(true))
}

