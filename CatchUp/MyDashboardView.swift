//
//  MyDashboardView.swift
//  CatchUp
//
//  Created by Tanay Solanki on 25/2/2025.
//

import SwiftUI

struct MyDashboardView: View {
    var body: some View {
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
            arrayOfReflections.append(ReflectionStruct(reflection: "[BLANK]", friendName: "[BLANK]", duration: "[BLANK]", catchUpDate: Date.now, catchUpTime: Date.now, feelingSlide: -1.0, journalEntry: "[BLANK]"))
        }
        .buttonStyle(.bordered)
        NavigationLink {
            ReflectionTimelineView()
        } label: {
            Text("reflection timeline")
        }
        .buttonStyle(.bordered)
    }
}

#Preview {
    MyDashboardView()
}
