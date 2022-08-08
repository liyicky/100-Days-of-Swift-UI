//
//  Country+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Jason Cheladyn on 2022/08/08.
//
//

import Foundation
import CoreData


extension Country {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Country> {
        return NSFetchRequest<Country>(entityName: "Country")
    }

    @NSManaged public var fullName: String?
    @NSManaged public var shortName: String?
    @NSManaged public var candies: NSSet?

}

// MARK: Generated accessors for candies
extension Country {

    @objc(addCandiesObject:)
    @NSManaged public func addToCandies(_ value: Candy)

    @objc(removeCandiesObject:)
    @NSManaged public func removeFromCandies(_ value: Candy)

    @objc(addCandies:)
    @NSManaged public func addToCandies(_ values: NSSet)

    @objc(removeCandies:)
    @NSManaged public func removeFromCandies(_ values: NSSet)

}

extension Country : Identifiable {
    public var wrappedShortName: String {
        shortName ?? "Unknown Country"
    }

    public var wrappedFullName: String {
        fullName ?? "Unknown Country"
    }
    
    public var candyArray: [Candy] {
        let set = candies as? Set<Candy> ?? []
        return set.sorted {
            $0.wrappedName < $1.wrappedName
        }
    }
}
