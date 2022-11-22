//
//  Treni+CoreDataProperties.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 16/11/22.
//
//

import Foundation
import CoreData


extension Treni {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Treni> {
        return NSFetchRequest<Treni>(entityName: "Treni")
    }

    @NSManaged public var id: UUID
    @NSManaged public var trainNum: String
    @NSManaged public var trainBrand: String
    @NSManaged public var delay: Int32
    @NSManaged public var isFavourite: Bool
    @NSManaged public var isRecent: Bool
    @NSManaged public var stops: [Stops]

}

// MARK: Generated accessors for stops
extension Treni {

    @objc(addStopsObject:)
    @NSManaged public func addToStops(_ value: Stops)

    @objc(removeStopsObject:)
    @NSManaged public func removeFromStops(_ value: Stops)

    @objc(addStops:)
    @NSManaged public func addToStops(_ values: NSSet)

    @objc(removeStops:)
    @NSManaged public func removeFromStops(_ values: NSSet)

}

extension Treni : Identifiable {

}
