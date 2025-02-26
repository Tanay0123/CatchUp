//
//  CatchUpApp.swift
//  CatchUp
//
//  Created by Oscar Mac on 24/2/2025.
//

import SwiftUI

@main
struct CatchUpApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab {
                    MainView()
                } label: {
                    Image(systemName: "house")
                    Text("Home")
                }
                Tab {
                    ReflectionTimelineView()
                } label: {
                    Image(systemName: "archivebox")
                    Text("Reflections")
                }
            }
            
        }
    }
}
