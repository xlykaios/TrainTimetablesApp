//
//  TrainListRow.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//

import SwiftUI

struct TrainListRow: View {
    var currTrain : oldTrain
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(systemName: "train.side.front.car")
                    .foregroundColor(.customBlue)
                Text("N° " + currTrain.trainNum + " - " + currTrain.trainBrand)

            }
            HStack{

                Text(currTrain.stops.first!.station)
                Text(currTrain.stops.first!.departureTime)
                Image(systemName: "arrow.right")
                Text(currTrain.stops.last!.station)
                Text(currTrain.stops.last!.departureTime)
            }
        }
    }
}


