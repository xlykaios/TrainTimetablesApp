//
//  Trains.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//

import Foundation

struct oldTrain : Hashable, Identifiable{
    var id : UUID
    var trainNum : String
    var trainBrand : String
    var Delay : Int
    var isFavourite : Bool
    var isRecent : Bool
    var stops : [oldStops]
}

