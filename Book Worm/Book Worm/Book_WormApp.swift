//
//  Book_WormApp.swift
//  Book Worm
//
//  Created by Jason Cheladyn on 2022/08/02.
//

import SwiftUI

@main
struct Book_WormApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
