//
//  LogContactView.swift
//  CatchUp
//
//  Created by Tanay Solanki on 26/2/2025.
//


//
//  LogContactView_.swift
//  CatchUp
//
//  Created by Elly Dongyeon Kim on 24/2/2025.
//


import SwiftUI

struct LogContactView2: View {
    @State private var searchText: String = ""
    
    @State private var selectOlivia: Bool = false
    @State private var selectEthan: Bool = false
    @State private var selectNoah: Bool = false
    @State private var selectAva: Bool = false
    @State private var selectSophia: Bool = false
    @State private var selectLiam: Bool = false
    @State private var selectHenry: Bool = false
    @State private var selectJoe: Bool = false
    @State private var selectJohn: Bool = false
    @State private var selectBart: Bool = false
    
    @State private var selectedNames: [String] = []
    
    func getSelectedFriends() -> [String] {
        var selected: [String] = []
        if selectOlivia {
            selected.append("Olivia")
        }
        if selectEthan {
            selected.append("Ethan")
        }
        if selectNoah {
            selected.append("Noah")
        }
        if selectAva {
            selected.append("Ava")
        }
        if selectSophia {
            selected.append("Sophia")
        }
        if selectLiam {
            selected.append("Liam")
        }
        if selectHenry {
            selected.append("Henry")
        }
        if selectJoe {
            selected.append("Joe")
        }
        if selectJohn {
            selected.append("John")
        }
        if selectBart {
            selected.append("Bart")
        }
        return selected
    }
    
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
                }
                .padding(.horizontal, 40)
                
                Form {
                    
                    Section(header: Text("Your Top CatchUp")) {
                        Toggle("Olivia", isOn: $selectOlivia)
                        Toggle("Ethan", isOn: $selectEthan)
                        Toggle("Noah", isOn: $selectNoah)
                        Toggle("Ava", isOn: $selectAva)
                        Toggle("Sophia", isOn: $selectSophia)
                        Toggle("John", isOn: $selectJohn)
                        Toggle("Henry", isOn: $selectHenry)
                        Toggle("Joe", isOn: $selectJoe)
                        Toggle("Liam", isOn: $selectLiam)
                        Toggle("Bart", isOn: $selectBart)
                        
                        
                    }
                    .toggleStyle(.button)
                }
                .frame(maxWidth: .infinity, maxHeight: 400)
                .scrollContentBackground(.hidden)
                .cornerRadius(20)
                .padding(.horizontal)
                .padding()
                
                Spacer()
                
                // Right Arrow Button
                Button {
                    print(getSelectedFriends().joined(separator: ", "))
                    
                } label: {
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
    LogContactView2()
}
