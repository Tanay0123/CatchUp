//
//  ContentView.swift
//  CatchUp
//
//  Created by Oscar Mac on 24/2/2025.
//

import SwiftUI

struct ReflectionDetailView: View {
    var reflection: ReflectionClass
    var body: some View {
        VStack {
            Text("Friend names: \(reflection.friendName)")
                .fontDesign(.rounded)
                .fontWeight(.medium)
                .font(.system(size: 22))
                .foregroundStyle(Color(.orange))
            Text("Pleasant")
                .fontDesign(.rounded)
                .fontWeight(.medium)
                .font(.system(size: 22))
                .foregroundStyle(Color(.orange))
            Text("😄")
                .fontDesign(.rounded)
                .fontWeight(.medium)
                .font(.system(size: 22))
                .foregroundStyle(Color(.orange))
            Text("Catch up duration: \(reflection.duration)")
                .fontDesign(.rounded)
                .fontWeight(.medium)
                .font(.system(size: 22))
                .foregroundStyle(Color(.orange))
            Text("Catch up date: \(reflection.catchUpDate.formatted(date: .numeric, time: .omitted)),")
                .fontDesign(.rounded)
                .fontWeight(.medium)
                .font(.system(size: 22))
                .foregroundStyle(Color(.orange))
            Text("Catch up time: \(reflection.catchUpTime.formatted(date: .omitted, time: .standard))")
                .fontDesign(.rounded)
                .fontWeight(.medium)
                .font(.system(size: 22))
                .foregroundStyle(Color(.orange))
//            Text("Emotion score: \(reflection.feelingSlide)") // translate into a colour, or an emoji
            Text("My entry: \(reflection.journalEntry)")
                .fontDesign(.rounded)
                .fontWeight(.medium)
                .font(.system(size: 22))
                .foregroundStyle(Color(.orange))
            
        }
        .padding()
    }
}

#Preview {
    ReflectionDetailView(reflection: arrayOfReflections[0])
}
