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
    
    var body: some View {
        VStack {
            Text("What did you do?")
                .fontWeight(.heavy)
                .font(.system(size: 32))
            
            Form {

                Section{
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
                Section{
                    Text("Categories go here")
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
