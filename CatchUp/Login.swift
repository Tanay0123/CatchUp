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
                        .padding(.vertical, 15)
                    Text("CatchUp")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundStyle(.orange)
                    HStack {
                       
                        RoundedRectangle(cornerRadius: 40)
                            .fill(.orange)
                            .opacity(10/100)
                            .frame(width: 380, height: 100)
                            .overlay(
                                HStack {
                                    Text("Reflect on your relationships and emotions over time.")
                                        .font(.title3)
                                        .fontWeight(.regular)
                                        .foregroundStyle(.black)
                                        .opacity(0.5)
                                        .padding(.leading)
                                    Spacer()
                                }
                                    .padding(.horizontal)
                            )
                        
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 30)
                    NavigationLink {
                        LogContactView_()
                    } label: {
                        Text("START!")
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.title2)
                    .fontWeight(.bold)
                    
                }
                }
            }
        }
    }





#Preview {
    Login()
}
