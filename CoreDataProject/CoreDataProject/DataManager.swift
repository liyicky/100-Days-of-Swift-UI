//
//  DataManager.swift
//  CoreDataProject
//
//  Created by Jason Cheladyn on 2022/08/05.
//

import Foundation
import CoreData

class DataManager: ObservableObject {
    
    static let INSTANCE: DataManager = DataManager()
    
    let container: NSPersistentContainer
    let moc: NSManagedObjectContext
    
    init() {
        container = NSPersistentContainer(name: "CoreDataProject")
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Something is wrong with CoreData and your up shit creek without a paddle my friend. \(error.localizedDescription)")
            }
            
        }
        container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        moc = container.viewContext
    }
}
