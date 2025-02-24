//
//  LogActivityView.swift
//  CatchUp
//
//  Created by Linda Dang on 24/2/2025.
//

import SwiftUI

struct LogActivityView: View {
    @State private var selectedDate: Date = Date()
    var body: some View {
        VStack {
            Text("What did you do?")
                .fontWeight(.heavy)
                .font(.system(size: 32))
            
            Form {
                Section(header: Text("test")) {
                }
                Section{
                    DatePicker("", selection: $selectedDate)
                }
            }
        }
    }
       //.padding()
}

#Preview {
    LogActivityView()
}
