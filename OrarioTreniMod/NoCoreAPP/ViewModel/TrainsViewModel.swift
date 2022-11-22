//
//  TrainsViewModel.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//

import Foundation

//class TrainsViewModel : ObservableObject{
//    @Published var TrainList : [Trains] = [treno1,treno2,treno3]
//
//
//    func toggleFavourite(PickedTrain : Trains, fromArray : inout [Trains]) -> Void{
//        var indice : Int?
//        for i in 0...3 {
//            if(fromArray[i] == PickedTrain){
//                indice = i
//            }
//        }
//        self.TrainList[indice!].isFavourite.toggle()
//
//    }
//}

import CoreData
import SwiftUI

class TrainsViewModel : ObservableObject{
    
    @FetchRequest(entity: Treni.entity(), sortDescriptors: [])
    var trainList : FetchedResults<Treni>
    @Environment(\.managedObjectContext) var context
    @Published var TrainList : [oldTrain] = [treno1,treno2,treno3]
    @Published var icon : String = "circle.inset.filled"
    
    
    func toggleFavourite(PickedTrain : oldTrain, fromArray : inout [oldTrain]) -> Void{
        var indice : Int = 0
        for i in 0...TrainList.count-1{
            if fromArray[i] ==  PickedTrain{
                indice = i
            }
        }
        self.TrainList[indice].isFavourite.toggle()
    }
}

 public func checkFermata(departure: String) -> String{
    let dateFormat = DateFormatter()
     dateFormat.dateFormat = "hh:mm"
     var actualDate = Date()
     var currentTime = 60*Calendar.current.component(.hour, from: actualDate) + Calendar.current.component(.minute, from: actualDate)
     
     var selectedTime = 60*Calendar.current.component(.hour, from: dateFormat.date(from: departure) ?? Date()) + Calendar.current.component(.minute, from: dateFormat.date(from: departure) ?? Date())
     
    dateFormat.dateFormat = "HH:mm"
     
     var icon : String = "circle.dashed"
     if (currentTime > selectedTime){
        icon = "circle.inset.filled"
    } else {
        icon = "circle.dashed"
    }
     return icon
}


