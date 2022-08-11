//
//  FriendEntity+CoreDataProperties.swift
//  FriendFace
//
//  Created by Jason Cheladyn on 2022/08/10.
//
//

import Foundation
import CoreData


extension FriendEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FriendEntity> {
        return NSFetchRequest<FriendEntity>(entityName: "FriendEntity")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var user: UserEntity?

}

extension FriendEntity : Identifiable {
    
    var wrappedId: String {
        return id ?? "Unknown"
    }
    
    var wrappedName: String {
        return name ?? "Unknown"
    }
}
