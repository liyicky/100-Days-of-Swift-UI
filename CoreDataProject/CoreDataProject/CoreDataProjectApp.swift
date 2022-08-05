//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Jason Cheladyn on 2022/08/05.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    
    @StateObject var dataManager = DataManager.INSTANCE
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataManager.moc)
        }
    }
}
