//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by NuGelaliee on 12/10/20.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
