//
//  DataManager.swift
//  FriendFace
//
//  Created by Jason Cheladyn on 2022/08/10.
//

import Foundation
import CoreData

class DataManager: ObservableObject {
    static let INSTANCE: DataManager = DataManager()
    
    let container: NSPersistentContainer
    let moc: NSManagedObjectContext
    
    init() {
        container = NSPersistentContainer(name: "Stash")
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Something went wrong with CoreData: \(error.localizedDescription)")
            }
        }
        
        container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        moc = container.viewContext
    }
    
    @MainActor
    func fetchUsers() async {
        let data = await ApiManager.fetchData()
        if let decodedResponse = try? JSONDecoder().decode([User].self, from: data) {
            await saveUsers(decodedResponse)
        }
    }
    
    func saveUsers(_ users: [User]) async {
        for user in users {
            let newUser = UserEntity(context: moc)
            newUser.id = user.id
            newUser.isActive = user.isActive
            newUser.name = user.name
            newUser.age = Int16(user.age)
            newUser.company = user.company
            newUser.email = user.email
            newUser.address = user.address
            newUser.about = user.about
            newUser.registered = user.registered
            newUser.tags = user.tags.joined(separator: ",")
            
            for friend in user.friends {
                let newFriend = FriendEntity(context: moc)
                newFriend.user = newUser
                newFriend.id = friend.id
                newFriend.name = friend.name
            }
        }
        save()
    }
    
    func save() {
        if moc.hasChanges {
            try? moc.save()
        }
    }
}
