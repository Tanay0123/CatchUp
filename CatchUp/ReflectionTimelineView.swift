//
//  ReflectionTimelineView.swift
//  CatchUp
//
//  Created by Oscar Mac on 26/2/2025.
//


//
//  ReflectionTimelineView.swift
//  CatchUp
//
//  Created by Tanay Solanki on 24/2/2025.
//

import SwiftUI

struct ReflectionTimelineView: View {  
    var body: some View {
        ZStack {
            VStack {
                NavigationStack {
                    List(arrayOfReflections, id: \.id) { reflection in
                        NavigationLink("\(reflection.friendName) \(reflection.catchUpDate.formatted(date: .numeric, time: .omitted))") {
                            ReflectionDetailView(reflection: reflection)
                        }
                    }
                    .navigationTitle("Reflection Timeline")
                }
            }
        }
    }
}

#Preview {
    ReflectionTimelineView()
}
