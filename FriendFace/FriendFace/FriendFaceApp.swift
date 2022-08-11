//
//  FriendFaceApp.swift
//  FriendFace
//
//  Created by Jason Cheladyn on 2022/08/08.
//

import SwiftUI

@main
struct FriendFaceApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    await DataManager.INSTANCE.fetchUsers()
                }
        }
    }
}
