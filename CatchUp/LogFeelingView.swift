//
//  LogFeelingView.swift
//  CatchUp
//
//  Created by Tanay Solanki on 26/2/2025.
//

//
//  LogFeelingView.swift
//  CatchUp
//
//  Created by Oscar Mac on 24/2/2025.
//

import SwiftUI

struct LogFeelingView: View {
    // MARK: - Properties
//    @Environment(\.dismiss) private var dismiss
//    @Binding var isPresented:Bool
    
    // Write to object
    @State private var feelingSlide:Float = 3.0
    
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
            HStack {
                Button {
                    arrayOfReflections[arrayOfReflections.endIndex-1].feelingDouble = feelingSlide
                } label: {
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                }
                .padding(.trailing)
                NavigationLink {
                    LogReflectionView(/*isPresented: $isPresented*/)/*.navigationBarBackButtonHidden(true)*/
                    
                    // TO DO:
                    // Pass $feelingSlide to arrayOfReflections.end
                } label: {
//                    Text("Next")
//                        .fontDesign(.rounded)
//                        .font(.title2)
//                        .fontWeight(.bold)
//                        .frame(maxWidth: .infinity)
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)

                }
//                .padding()
//                .foregroundStyle(Color.buttonText)
//                .buttonStyle(.bordered)
//                .buttonBorderShape(.capsule)
//                .controlSize(.large)
            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    
//                    Button {
//                        // 3
////                        dismiss()
//                        
//                    } label: {
//                        // 4
//                        
//                        
//                        Image(systemName: "chevron.left")
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
            
        }.background(Color(red: 250/255, green: 243/255, blue: 230/255).edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    LogFeelingView()
}
