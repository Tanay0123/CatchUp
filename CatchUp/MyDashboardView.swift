//
//  MyDashboardView.swift
//  CatchUp
//
//  Created by Tanay Solanki on 25/2/2025.
//

import SwiftUI

struct MyDashboardView: View {
    //    var arrayOfReflections: [ReflectionStruct]
    var body: some View {
        NavigationStack {
            Button("Add reflection") {
                arrayOfReflections.append(ReflectionClass(id: UUID(), reflection: "[BLANK]", friendName: "[BLANK]", duration: "[BLANK]", catchUpDate: Date.now, catchUpTime: Date.now, activity: "[BLANK]", feelingSlide: -1.0, journalEntry: "[BLANK]"))
            }
            .buttonStyle(.bordered)
            
            NavigationLink {
                LogContactView2()
            } label: {
                Text("Modify latest reflection")
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
}

#Preview {
    MyDashboardView()
}
