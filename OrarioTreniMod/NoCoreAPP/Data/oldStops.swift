//
//  Stops.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//

import Foundation
  

public struct oldStops : Hashable, Identifiable{
    public var id = UUID()
    public var station : String
    public var arrivalTime : String
    public var departureTime : String
}



