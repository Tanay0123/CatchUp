//
//  LogFeelingView.swift
//  CatchUp
//
//  Created by Oscar Mac on 24/2/2025.
//

import SwiftUI

struct LogFeelingView: View {
    // MARK: - Properties
    @Environment(\.dismiss) private var dismiss
    @Binding var isPresented:Bool
    
    // Write to object
    @State private var feelingSlide:Double = 3.0
    
    // MARK: - Body
    var body: some View {
        // Data structure for emotions and their corresponding text and emoji
        let feelings = [
            ("Very Unpleasant", "🤢"),
            ("Unpleasant", "😒"),
            ("Slightly Unpleasant", "😕"),
            ("Neutral", "😶"),
            ("Slightly Pleasant", "😌"),
            ("Pleasant", "😄"),
            ("Very Pleasant", "🤩")
        ]
        VStack {
            Text("How did you feel?")
                .fontDesign(.rounded)
                .fontWeight(.heavy)
                .font(.system(size: 32))
                .foregroundStyle(Color(.orange))
            // Using the `Int(feelingSlide)` index to access the feelings array
            let feeling = feelings[Int(feelingSlide)]
            
            Text(feeling.0)
            Text(feeling.1)
                .font(.system(size: 50))
            
            Slider(value: $feelingSlide, in: 0...6, step: 1)
                .padding()
            
            Spacer()
            NavigationLink {
                LogReflectionView(isPresented: $isPresented).navigationBarBackButtonHidden(true)
                
                // TO DO:
                // Pass $feelingSlide to arrayOfReflections.end
            } label: {
                Text("Next")
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
            
        }.background(Color.catchUpYellow.edgesIgnoringSafeArea(.all))
    }
}
