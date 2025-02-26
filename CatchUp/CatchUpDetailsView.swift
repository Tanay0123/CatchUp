//
//  ContentView.swift
//  CatchUp
//
//  Created by Oscar Mac on 24/2/2025.
//

import SwiftUI

struct ContentView: View {
    var reflection: ReflectionClass
    var body: some View {
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
            Text("CatchUp with \(reflection.friendName)")
                .fontDesign(.rounded)
                .fontWeight(.heavy)
                .font(.system(size: 32))
                .foregroundStyle(Color(.orange))
            // Using the `Int(feelingSlide)` index to access the feelings array
            let feeling = feelings[Int(reflection.feelingDouble)]
            
            Text(feeling.0)
            Text(feeling.1)
                .font(.system(size: 50))
            
            Text("Catch up duration: \(reflection.duration)")
            Text("Catch up date: \(reflection.catchUpDate.formatted(date: .numeric, time: .omitted)),")
            Text("Catch up time: \(reflection.catchUpDate.formatted(date: .omitted, time: .standard))")
            Text("Catch up activity: \(reflection.activity)")
//            Text("Emotion score: \(reflection.feelingSlide)") // translate into a colour, or an emoji
            Text("My entry: \(reflection.journalEntry)")
        }
        .padding()
    }
}

#Preview {
    ContentView(reflection: arrayOfReflections[0])
}
