//
//  iOSaccessibilityApp.swift
//  iOSaccessibility
//
//  Created by Adishree Das on 8/10/25.
//

import SwiftUI

@main
struct iOSaccessibilityApp: App {
    @StateObject private var textSizeManager = TextSizeManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(textSizeManager)
        }
    }
}
