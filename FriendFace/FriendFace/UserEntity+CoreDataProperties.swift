//
//  UserEntity+CoreDataProperties.swift
//  FriendFace
//
//  Created by Jason Cheladyn on 2022/08/10.
//
//

import Foundation
import CoreData


extension UserEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserEntity> {
        return NSFetchRequest<UserEntity>(entityName: "UserEntity")
    }

    @NSManaged public var id: String?
    @NSManaged public var isActive: Bool
    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var company: String?
    @NSManaged public var email: String?
    @NSManaged public var address: String?
    @NSManaged public var about: String?
    @NSManaged public var registered: String?
    @NSManaged public var tags: String?
    @NSManaged public var friends: NSSet?

}

// MARK: Generated accessors for friends
extension UserEntity {

    @objc(addFriendsObject:)
    @NSManaged public func addToFriends(_ value: FriendEntity)

    @objc(removeFriendsObject:)
    @NSManaged public func removeFromFriends(_ value: FriendEntity)

    @objc(addFriends:)
    @NSManaged public func addToFriends(_ values: NSSet)

    @objc(removeFriends:)
    @NSManaged public func removeFromFriends(_ values: NSSet)

}

extension UserEntity : Identifiable {
    
    public var wrappedId: String { id ?? "Unknown" }
    public var wrappedName: String { name ?? "Unknown" }
    public var wrappedCompany: String { company ?? "Unknown" }
    public var wrappedEmail: String { email ?? "Unknown" }
    public var wrappedAddress: String { address ?? "Unknown" }
    public var wrappedAbout: String { about ?? "Unknown" }
    public var wrappedRegistered: String { registered ?? "Unknown" }
    public var wrappedTags: [String] {
        if let tags = tags {
            return tags.components(separatedBy: ",")
        }
        return []
    }
    public var friendsArray: [FriendEntity] {
        let set = friends as? Set<FriendEntity> ?? []
        return set.sorted {
            $0.wrappedName < $1.wrappedName
        }
    }
}
