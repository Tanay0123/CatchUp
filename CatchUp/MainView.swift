//
//  MainView.swift
//  CatchUp
//
//  Created by Oscar Mac on 24/2/2025.
//

import SwiftUI

struct MainView: View {
    // MARK: - Properties
    @State private var isPresented:Bool = false
    
    
    // MARK: - Body
    var body: some View {
        Spacer()
        
        Button {
            isPresented.toggle()
        } label: {
            Text("Add")
                .fontDesign(.rounded)
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
        }
        .padding()
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
        
        .sheet(isPresented: $isPresented){
            LogContactView()
                // Corner radius
                .presentationCornerRadius(25)
                .presentationDetents([.large])
        }
    }
}
         
#Preview {
    MainView()
}
