//
//  Candy+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Jason Cheladyn on 2022/08/08.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var country: Country?

}

extension Candy : Identifiable {
    
    public var wrappedName: String {
        name ?? "Unknown Candy"
    }

}
