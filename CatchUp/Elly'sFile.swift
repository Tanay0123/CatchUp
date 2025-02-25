//
//  Elly'sFile.swift
//  CatchUp
//
//  Created by Tanay Solanki on 24/2/2025.
//

//
//  LogContactView_.swift
//  CatchUp
//
//  Created by Elly Dongyeon Kim on 24/2/2025.
//


import SwiftUI

struct LogContactView_: View {
    @State private var searchText: String = ""
    @State private var contacts: [String] = ["John Apple", "Elly Kim", "Linda", "Tanay", "Oscar", "Noor"]
    
    
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
                    .padding(.bottom, 10)
                
                // Contact List Section
                VStack {
                    // Search Bar
                    HStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .frame(height: 40)
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
                    .padding()
                    
                    // Contact List
                    ForEach(contacts, id: \.self) { contact in
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                            Text(contact)
                                .font(.body)
                            Spacer()
                            Image(systemName: "squareshape")
                                .foregroundColor(.gray)
                                .padding(.trailing)
                        }
                        .padding(.horizontal)
                    }
                    .padding(.bottom)
                }
                .frame(maxWidth: .infinity)
                .background(Color(red: 230/255, green: 245/255, blue: 255/255))
                // Light blue background
                .cornerRadius(20)
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

