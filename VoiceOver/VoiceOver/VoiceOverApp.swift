//
//  VoiceOverApp.swift
//  VoiceOver
//
//  Created by Jason Cheladyn on 2022/12/06.
//

import SwiftUI

@main
struct VoiceOverApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(
                    VoiceOverStore(
                        initial: VoiceOverState(),
                        reducer: voiceOverReducer
                    )
                )
        }
    }
}
