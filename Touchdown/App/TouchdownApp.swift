//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Arjun Prabhune on 9/27/23.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
