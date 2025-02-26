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
        VStack {
            Text("Hello!")
                .fontDesign(.rounded)
                .fontWeight(.heavy)
                .font(.system(size: 32))
                .foregroundStyle(Color(.orange))
                .padding()
            Spacer()
            
            Button {
                isPresented.toggle()
                arrayOfReflections.append(ReflectionClass(id: UUID(), reflection: "[BLANK]", friendName: "[BLANK]", duration: "[BLANK]", catchUpDate: Date.now, catchUpTime: Date.now, feelingSlide: -1.0, journalEntry: "[BLANK]"))
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
                LogFriendView(isPresented: $isPresented)
                // Corner radius
                    .presentationCornerRadius(25)
                //                .presentationDragIndicator(.visible)
                    .presentationDetents([.large])
            }
        }.background(Color.catchUpYellow.edgesIgnoringSafeArea(.all))
    }
}
         
#Preview {
    MainView()
}
