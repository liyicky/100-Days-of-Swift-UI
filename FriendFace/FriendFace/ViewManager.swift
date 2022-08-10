//
//  ViewManager.swift
//  FriendFace
//
//  Created by Jason Cheladyn on 2022/08/08.
//

import Foundation

class ViewManager: ObservableObject {
    
    static let ALPHABET = "abcdefghijklmnopqrstuvwxyz"
    static let CHARACTERS = Array(ALPHABET)
    
    @Published var users = [User]()
    @Published var sortedUsers = [String: [User]]()
    
    func fetchUsers() async {
        let data = await ApiManager.fetchData()
        if let decodedResponse = try? JSONDecoder().decode([User].self, from: data) {
            users = decodedResponse
            sortedUsers = sortUsers()
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
