//
//  User.swift
//  FriendFace
//
//  Created by Jason Cheladyn on 2022/08/08.
//

import Foundation

struct User: Codable {
    var id: String
    var isActive: Bool
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: String
    var tags: [String]
    var friends: [Friend]
    
    struct Friend: Codable, Hashable {
        var id: String
        var name: String
    }
    
    var formattedDate: String {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [
            .withDay, .withMonth, .withYear
        ]
        
        if let date = formatter.date(from: registered) {
            return date.formatted()
        }
        
        return "Unknown"
    }
    
    var friendsString: String {
        var friendString = ""
        for friend in friends {
            friendString += friend.name + " "
        }
        return friendString
    }
}
