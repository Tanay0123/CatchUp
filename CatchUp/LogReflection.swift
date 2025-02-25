//
//  EntryView.swift
//  CatchUp
//
//  Created by Noor Marwaha on 23/2/2025.
//

import SwiftUI

struct LogReflection: View {
    var body: some View {
        NavigationStack {
        
            VStack {
                HStack {
                    Text("Excited because...")
                    Spacer()
                    Image(systemName: "pencil")
                        .foregroundColor(.blue)
                      }
                
                .padding(.horizontal, 30)
                .padding(.top, 40).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                HStack {
                    NavigationLink {
                        Text("This is camera page")
                    } label: { Image(systemName: "plus.circle.dashed")
                    }
                    Spacer()
                    
                    NavigationLink {
                        Text("This is camera page")
                    } label: {
                        Image(systemName: "camera")
                    }
            
                    Spacer()
                    
                    NavigationLink {
                        Text("This is camera page")
                    } label: {
                        Image(systemName: "photo.on.rectangle")
                    }
                    
                    Spacer()
                    
                    NavigationLink {
                        Text("This is camera page")
                    } label: {
                        Image(systemName: "waveform")
                    }
                    
                        Spacer()
                    
                    NavigationLink {
                        Text("This is camera page")
                    } label: {
                        Image(systemName: "microphone")
                    }
                    
                }
                
                .padding(.horizontal, 30)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) .padding(.bottom, 80)
               
            }
        }
        
    }
}

#Preview {
    LogReflection()
}


// the space between the pencil n text has to be on its own and not this way.
// it does not have to be 'excited' only, it has to be a suggestion based on the users input in Oscar's page.

// add something to naturally increase the space according to the users input
// maybe can expand the plus button for formating the text(bold, fonts, size, modifications)
// user should be able to move around the images and videos and change their order and stuff.
// user should also be able to change the prompt in the heading.
 
