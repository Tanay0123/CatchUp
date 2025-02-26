//
//  LogActivityView.swift
//  CatchUp
//
//  Created by Linda Dang on 24/2/2025.
//

import SwiftUI

struct LogActivityView: View {
    @State private var selectedDate: Date = Date()
    @State private var hangoutLength: String = ""
    private var length = ["Quick", "Medium", "Long"]
    @State private var activityType = [
        
        "Arts and Crafts",
        "Cultural and Educational Events",
        "Dining Experiences",
        "Fitness and Wellness",
        "Music and Dance",
        "Outdoor Activities",
        "Social Gatherings",
        "Sports and Games",
        "Technology and Gaming",
        "Travel and Adventure",
        "Volunteering and Charity Work",
        "Other",
        //FIXME: ADD YOUR OWN ACTIVITY: button to save user input into state variable array
        
    ]
    @State private var selectedActivity: String = "Arts and Crafts"
    
    
    var body: some View {
        VStack {
            Text("What did you do?")
                .fontWeight(.heavy)
                .font(.system(size: 32))
            
            Form {
                
                Section {
                        DatePicker("When?", selection: $selectedDate)                 }
                Section (header: Text("How long for?")) {
                    Picker("Duration", selection: $hangoutLength) {
                        ForEach(length, id: \.self) {choice in
                            Text(choice)
                        }
                    }
                    .pickerStyle(.wheel)
                    .frame(height: 150)
                }
                Section (header: Text("What did you get up to?")) {
                    Picker("Activity Type", selection: $selectedActivity) {
                        ForEach(activityType, id: \.self) { choice in
                            Text(choice)
                        }
                    }
                    //.pickerStyle(.inline)
                }
            }
        }
    }
}

//.padding()

#Preview {
    LogActivityView()
}
////Options for
//1. duration(3 options)
//2. time, date,autopopulate current date and time
//3. activity type menu:
//-categories: recreation, meal, phone/video call
//10 preloaded options in an array, optional to fill out, option to create your own
