//
//  ReflectionTimelineView.swift
//  CatchUp
//
//  Created by Tanay Solanki on 24/2/2025.
//

import SwiftUI

struct ReflectionTimelineView: View {
    
    @State public var reflectionArray = [
        "reflection 5",
        "reflection 4",
        "reflection 3",
        "reflection 2",
        "reflection 1"
    ]
    
    // Explore options for building a class called "Reflections", and building a navigation stack that uses individual properties from the "Reflections" for the purposes of the list.
    
    var body: some View {
        ZStack {
            // Background color
//            Color(red: 250/255, green: 243/255, blue: 230/255)
//                .ignoresSafeArea()

            VStack {
                NavigationStack {
                    List(arrayOfReflections, id: \.id) { reflection in
                        NavigationLink("\(reflection.friendName) \(reflection.catchUpDate.formatted(date: .numeric, time: .omitted))") {
                            ContentView(reflection: reflection)
                        }
                    }
                    .navigationTitle("Reflection Timeline")
                }
            }
        }
    }
}

#Preview {
    ReflectionTimelineView()
}

// Look into Struct UUID for identification between struct instances
// Swift Guidelines suggest using "structs" before using "classes"
// Check out Paul Hudson, hacking with struct, if stuck
