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

        "Outdoor Activities",
        "Sports and Games",
        "Arts and Crafts",
        "Cultural and Educational Events",
        "Dining Experiences",
        "Music and Dance",
        "Volunteering and Charity Work",
        "Social Gatherings",
        "Fitness and Wellness",
        "Travel and Adventure",
        "Technology and Gaming",
        "Other",
        //FIXME: ADD YOUR OWN ACTIVITY
    ]
    
    var body: some View {
        VStack {
            Text("What did you do?")
                .fontWeight(.heavy)
                .font(.system(size: 32))
            
            Form {
                
                Section (header: Text("When?")) {
                    DatePicker("When?", selection: $selectedDate) //FIXME: ALIGN LEFT/CENTRE
                }
                Section (header: Text("How long for?")) {
                    Picker("Duration", selection: $hangoutLength) {
                        ForEach(length, id: \.self) {choice in
                            Text(choice)
                        }
                    }
                    .pickerStyle(.wheel)
                }
                Section (header: Text("What did you get up to?")) {
                    Picker("Activity Type", selection: $activityType) {
                        ForEach(activityType, id: \.self) {choice in
                            Text(choice)
                        }

                    }
                    
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
