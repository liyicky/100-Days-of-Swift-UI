//
//  Singer+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Jason Cheladyn on 2022/08/07.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?

}

extension Singer : Identifiable {

}

extension Singer {
    
    var wrappedFirstname: String {
        firstName ?? "Unknown"
    }
    
    var wrappedLastname: String {
        lastName ?? "Unknown"
    }
}
