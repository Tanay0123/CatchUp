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
            Text("Friend name: \(reflection.friendName)")
            Text("Catch up duration: \(reflection.duration)")
            Text("Catch up date: \(reflection.catchUpDate.formatted(date: .numeric, time: .omitted)),")
            Text("Catch up time: \(reflection.catchUpTime.formatted(date: .omitted, time: .standard))")
//            Text("Emotion score: \(reflection.feelingSlide)") // translate into a colour, or an emoji
            Text("My entry: \(reflection.journalEntry)")
        }
        .padding()
    }
}

#Preview {
    ReflectionDetailView(reflection: arrayOfReflections[0])
}
