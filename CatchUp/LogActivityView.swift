//
//  LogActivityView.swift
//  CatchUp
//
//  Created by Tanay Solanki on 26/2/2025.
//

//
//  LogActivityView.swift
//  CatchUp
//
//  Created by Linda Dang on 24/2/2025.
//

import SwiftUI

struct LogActivityView: View {
    @State private var selectedDate: Date = Date()
    @State private var selectedDuration: String = ""
    @State private var hangoutDuration = ["Quick", "Medium", "Long"]
    @State private var selectedActivity: String = "Arts and Crafts"
    @State private var userInput: String = ""
    @State private var activityType = [
        
        "Arts and Crafts 🎨",
        "Cultural and Educational Events 🎭",
        "Dining Experiences 🍽️",
        "Fitness and Wellness 🧘 ",
        "Music and Dance 🎵",
        "Outdoor Activities 🌲",
        "Social Gatherings 🎉",
        "Sports and Games 🏀" ,
        "Technology and Gaming 🎮",
        "Travel and Adventure ✈️",
        "Volunteering and Charity Work 🎗️",
        "Other",
        //FIXME: ADD YOUR OWN ACTIVITY: button to save user input into state variable array
        
    ]
    
    var body: some View {
        ZStack { //Background color
            Color(red: 250/255, green: 243/255, blue: 230/255)
                .ignoresSafeArea()
            VStack {
                Text("What did you do?")
                    .fontWeight(.heavy)
                    .font(.system(size: 32))
                    .foregroundColor(.orange)
                
                Form { //FIXME: make menu colors pale yellow
                    
                    Section (header: Text("1 - When?")){
                        DatePicker("Select:", selection: $selectedDate)
                    }
                    Section (header: Text("2 - How long for?")) {
                        Picker("Duration", selection: $selectedDuration) {
                            ForEach(hangoutDuration, id: \.self) {choice in
                                Text(choice)
                            }
                        }
                        .pickerStyle(.wheel)
                        .frame(height: 130)
                    }
                    Section (header: Text("3 - What did you get up to?")) { //FIXME: make this optional, can leave this blank
                        Picker("Activity Type", selection: $selectedActivity) {
                            ForEach(activityType, id: \.self) { choice in
                                Text(choice)
                            }
                            //                    }
                            //                                            TextField("Add your own activity",text: $userInput)
                            //                                        }
                            //                                            Button(action: {
                            //                                            if !self.userInput.isEmpty {
                            //                                                    self.activityType.append(self.userInput)
                            //                                                    self.userInput = ""
                            //                                                }
                            //                                        }) {
                            //                                            Text("Save to activity list")
                        }
                    }
                    
                    Section (header: Text("Confirm Fields")) {}
                }
                .frame(maxWidth: 350, maxHeight: 500)
                .padding()
                .scrollContentBackground(.hidden)
                .background(Color(red: 230/255, green: 245/255, blue: 255/255))
                .cornerRadius(50)
            }
            HStack {
                Button {
//                    print("\(selectedDate)")
                    arrayOfReflections[arrayOfReflections.endIndex-1].catchUpDate = selectedDate
                } label: {
                    Image(systemName: "1.circle.fill")
                }
                Button {
//                    print("\(selectedDuration)")
                    arrayOfReflections[arrayOfReflections.endIndex-1].duration = selectedDuration
                } label: {
                    Image(systemName: "2.circle.fill")
                }
                Button {
//                    print("\(selectedActivity)")
                    arrayOfReflections[arrayOfReflections.endIndex-1].activity = selectedActivity
                } label: {
                    Image(systemName: "3.circle.fill")
                }
            }
            .padding(.top, 500)
            HStack {
                NavigationLink {
                    LogContactView2()
                } label: {
                    Image(systemName: "arrow.left.circle.fill")
                }
                
                NavigationLink {
                    ReflectionTimelineView()
                    //really should be logfeelings, but don't know what parametres need to be passed
                } label: {
                    Image(systemName: "arrow.right.circle.fill")
                }
            }
            .padding(.top, 700)
        }
        
        //1.make a text field to save user input
        //2. save the user input into a variable
        //3. and append it on the array
        // button to open a text field once clicked. if button is pressed, open text field.
    }
    
}
#Preview {
    LogActivityView()
}
