//
//  FINALElevateHerApp.swift
//  FINALElevateHer
//
//  Created by Nikki  on 7/30/25.
//

import SwiftUI
import SwiftData

@main
struct FINALElevateHerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Meeting.self)
        }
    }
}
