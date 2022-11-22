//
//  Station.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//

import Foundation
struct Station : Hashable, Identifiable{
    var id : UUID
    var stationName : String
    var stationBrand : String
}
