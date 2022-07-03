//
//  hackpointApp.swift
//  hackpoint
//
//  Created by Владимир Федоров on 30.06.2022.
//

import SwiftUI

@main
struct hackpointApp: App {
    var network = NetworkTestServer()

    var body: some Scene {
        WindowGroup {
            ContentView()
                    .environmentObject(network)
        }
    }
}
