//
//  DataController.swift
//  Book Worm
//
//  Created by Jason Cheladyn on 2022/08/02.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    static var context: NSManagedObjectContext {
        return container.viewContext
    }
    
    static var container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Bookworm")
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load. Abandon all hope. \(error.localizedDescription)")
            }
        }
        return container
    }()
}
