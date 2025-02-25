//
//  Login.swift
//  CatchUp
//
//  Created by Elly Dongyeon Kim on 25/2/2025.
//

import SwiftUI

struct Login: View {
    @State private var Id: String = ""
    @State private var Password: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Background color
                Color(red: 250/255, green: 243/255, blue: 230/255)
                    .ignoresSafeArea()
                VStack{
                    Image("CatchUp-02")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .padding()
                    HStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .frame(height: 50)
                            .overlay(
                                HStack {
                                    TextField("ID", text: $Id)
                                        .padding(.leading)
                                    Spacer()
                                }
                                    .padding(.horizontal)
                            )
                        
                    }
                    .padding(.horizontal, 40)
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .frame(height: 50)
                            .overlay(
                                HStack {
                                    TextField("Password", text: $Password)
                                        .padding(.leading)
                                    Spacer()
                                }
                                    .padding(.horizontal)
                            )
                        
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 20)
                    NavigationLink {
                        LogContactView_()
                    } label: {
                        Text("Log in!")
                    }
                    .buttonStyle(.bordered)
                }
            }
        }
    }
}




#Preview {
    Login()
}
