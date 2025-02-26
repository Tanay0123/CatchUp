//
//  LogContactView_.swift
//  CatchUp
//
//  Created by Elly Dongyeon Kim on 24/2/2025.
//


import SwiftUI

struct LogContactView_: View {
    @State private var searchText: String = ""
    //  @State private var contacts: [String] = ["Olivia", "Ethan", "Noah", "Ava"]
    
    //  "Lucas Wong", "Sophia Patel", "Liam Nguyen", "Isabella Garcia", "Benjamin Smith", "Emma Brown", "Daniel Wilson", "Chloe Martinez", "Henry Taylor", "Charlotte Evans", "Jack Robinson", "Amelia White", "William Harris", "Zoe Scott"
    
    @State private var selectedContacts: Set<String> = []
    @State private var selectOlivia: Bool = false
    @State private var selectEthan: Bool = false
    @State private var selectNoah: Bool = false
    @State private var selectAva: Bool = false
    @State private var selectSophia: Bool = false
    @State private var selectLiam: Bool = false
    @State private var selectHenry: Bool = false
    
    
    
    
    
    var body: some View {
        ZStack {
            // Background color
            Color(red: 250/255, green: 243/255, blue: 230/255)
                .ignoresSafeArea()
            
            VStack {
                // Close button
                HStack {
                    Button(action: {}) {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.gray)
                    }
                    .padding()
                    
                    Spacer()
                }
                
                // Title
                Text("Who did you see?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
                    .padding(.bottom, 20)
                
                // Contact List Section
                HStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .frame(height: 50)
                        .overlay(
                            HStack {
                                TextField("Search Contact", text: $searchText)
                                    .padding(.leading)
                                Spacer()
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .padding(.trailing)
                            }
                                .padding(.horizontal)
                        )
                    
                    // Add (+) Button
                    Button(action: {}) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal, 40)
                
               // ScrollView {
                    //VStack {
                        
                      // HStack {
                            //Image(systemName: "person.circle.fill")
                              //  .resizable()
                                //.frame(width: 40, height: 40)
                               // .foregroundColor(.blue)
                            
                            Form {
                                    
                                Section(header: Text("Your Top CatchUp")) {
                                    Toggle("Olivia", isOn: $selectOlivia)
                                    Toggle("Ethan", isOn: $selectEthan)
                                    Toggle("Noah", isOn: $selectNoah)
                                    Toggle("Ava", isOn: $selectAva)
                                    Toggle("Sophia", isOn: $selectSophia)
                                    Toggle("Liam", isOn: $selectLiam)
                                    Toggle("Henry", isOn: $selectHenry)
                                    
                                    
                                }
                                .toggleStyle(.button)
                                
                               // .padding(.horizontal)
                            }
                            //.padding(.bottom)
                       // }
                    //}
               // }
                .frame(maxWidth: .infinity, maxHeight: 400) // Set fixed height for scrollable box
                .background(Color(red: 230/255, green: 245/255, blue: 255/255))
                .cornerRadius(20)
                .padding(.horizontal)
                .padding()
                
                Spacer()
                
                
                
                
                // Right Arrow Button
                Button(action: {}) {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.blue)
                }
                .padding(.bottom)
            }
        }
    }
}
#Preview {
    LogContactView_()
}

