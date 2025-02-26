//
//  LogActivityView.swift
//  CatchUp
//
//  Created by Oscar Mac on 24/2/2025.
//

import SwiftUI

struct LogActivityView: View {
    // MARK: - Properties
    
    @Environment(\.dismiss) private var dismiss
    @Binding var isPresented:Bool
    @State private var selectedDate: Date = Date()
    @State private var selectedDuration: String = ""
    @State private var hangoutDuration = ["Quick", "Medium", "Long"]
    @State private var selectedActivity: String = "Arts and Crafts"
    @State private var userInput: String = ""
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

    // MARK: - Body
    var body: some View {
        
        VStack {
            Text("What did you do?")
                .fontWeight(.heavy)
                .font(.system(size: 32))
            
            Form {
                
                Section {
                    DatePicker("When?", selection: $selectedDate)                 }
                Section (header: Text("How long for?")) {
                    Picker("Duration", selection: $selectedDuration) {
                        ForEach(hangoutDuration, id: \.self) {choice in
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
                        //                    }
                        //                    TextField("Add your own activity",text: $userInput)
                        //                }
                        //                    Button(action: {
                        //                    if !self.userInput.isEmpty {
                        //                            self.activityType.append(self.userInput)
                        //                            self.userInput = ""
                        //                        }
                        //                }) {
                        //                    Text("Save to activity list")
                    }
                }
            }
        }
        
        
            Spacer()
            NavigationLink {
                LogFeelingView(isPresented: $isPresented).navigationBarBackButtonHidden(true)
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
                            
                            
                        
                    }
                    
                    .buttonStyle(.bordered)
                        .foregroundStyle(Color.buttonText)
                        .fontWeight(.medium)
                        .fontDesign(.rounded)
                        
                        .clipShape(Circle())
                }
            }
            
        
    }
}
