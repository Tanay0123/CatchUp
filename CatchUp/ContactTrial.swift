
//
//  ContentView.swift
//  ListThemAll
//
//  Created by Elly Dongyeon Kim on 21/2/2025.
//

import SwiftUI

struct ContactTrial: View {
    
    @State var Contact = [
        "John Apple",
        "Elly",
        "Noor",
        "Linda",
        "Osacr",
        "Tanay",
        "Audrey",
        "Stephs",
        "Ace",
        "Harry",

    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                
                List {
                    ForEach(Contact, id: \.self) { place in
                        HStack{
                            Label("", systemImage: "circle")
                                .tint(.blue)
                            NavigationLink(place) {
                                Text(place)
                            }
                        }
                    }
                    .listStyle(.plain)
                }
                .navigationBarTitle("Contact")
            }
        }
    }
}
#Preview {
    ContactTrial()
}




