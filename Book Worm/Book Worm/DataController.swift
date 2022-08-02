//
//  DataController.swift
//  Book Worm
//
//  Created by Jason Cheladyn on 2022/08/02.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load. Abandon all hope. \(error.localizedDescription)")
            }
        }
    }
}
