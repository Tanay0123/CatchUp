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
                        .frame(width: 200, height: 200)
                        .padding(.vertical, 10)
                    Text("CatchUp")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue)
                    HStack {
                       
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .frame(width: 400, height: 100)
                            .overlay(
                                HStack {
                                    Text("Reflect on your relationships and emotions over time.")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .foregroundStyle(.gray)
                                        .padding(.leading)
                                    Spacer()
                                }
                                    .padding(.horizontal)
                            )
                        
                    }
                    .padding(.horizontal, 40)
                    
                    
                    
                    
                    .padding(.horizontal, 40)
                    .padding(.vertical, 30)
                    NavigationLink {
                        LogContactView_()
                    } label: {
                        Text("START!")
                    }
                    .buttonStyle(.bordered)
                    .font(.title2)
                }
                }
            }
        }
    }





#Preview {
    Login()
}
