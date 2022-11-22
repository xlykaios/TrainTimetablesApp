//
//  Stops+CoreDataProperties.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 16/11/22.
//
//

import Foundation
import CoreData


extension Stops {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Stops> {
        return NSFetchRequest<Stops>(entityName: "Stops")
    }

    @NSManaged public var station: String
    @NSManaged public var arrivalTime: String
    @NSManaged public var departureTime: String

}

extension Stops : Identifiable {

}
