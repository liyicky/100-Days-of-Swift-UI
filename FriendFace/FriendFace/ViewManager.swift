//
//  ViewManager.swift
//  FriendFace
//
//  Created by Jason Cheladyn on 2022/08/08.
//

import Foundation
import CoreData

class ViewManager: ObservableObject {
    
    static let ALPHABET = "abcdefghijklmnopqrstuvwxyz"
    static let CHARACTERS = Array(ALPHABET)
    
    @Published var users = [User]()
    @Published var sortedUsers = [String: [User]]()
    
    @MainActor
    func fetchUsers() async {
        if users.isEmpty { // lazy load
            let request = UserEntity.fetchRequest()
            do {
                let results = try DataManager.INSTANCE.moc.fetch(request)
                
                for result in results {
                    let userEntity = result as UserEntity
                    let user = User(id: userEntity.wrappedId, isActive: userEntity.isActive, name: userEntity.wrappedName, age: Int(userEntity.age), company: userEntity.wrappedCompany, email: userEntity.wrappedEmail, address: userEntity.wrappedEmail, about: userEntity.wrappedAbout, registered: userEntity.wrappedRegistered, tags: userEntity.wrappedTags, friends: [])
                    users.append(user)
                }
                
                sortedUsers = sortUsers()
                
            } catch let error as NSError {
                print("Couldn't fetch. \(error.localizedDescription)")
            }
        }
    }
    
    func sortUsers() -> [String: [User]] {
        var sortedUsers = [String: [User]]()
        
        for char in ViewManager.CHARACTERS {
            sortedUsers[String(char)] = [User]()
            for user in users {
                let last = user.name.split(separator: "\n").last
                if last!.first!.lowercased() == String(char) {
                    sortedUsers[String(char)]?.append(user)
                }
            }
        }
        return sortedUsers
    }
}
