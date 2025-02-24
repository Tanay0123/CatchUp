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
    @Environment(\.dismiss) private var dismiss
    
    
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
        .buttonStyle(.bordered)
        .foregroundStyle(Color(.buttonText))
        .buttonBorderShape(.capsule)
        .controlSize(.large)
        
        .sheet(isPresented: $isPresented){
            LogContactView()
                // Corner radius
                .presentationCornerRadius(25)
//                .presentationDragIndicator(.visible)
                .presentationDetents([.large])
        }
    }
}
         
#Preview {
    MainView()
}
