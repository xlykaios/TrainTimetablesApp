//
//  TrainpageView.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 21/11/22.
//

import SwiftUI

struct TrainpageView: View {
    @State var currTrain : oldTrain
    var currDate = Date()
    @State var icona : String = "circle.inset.filled"

    var body: some View {
        NavigationView{
            Form{
                Section{
                    VStack(alignment: .leading){
                        Text(currTrain.trainBrand + " - " + currTrain.trainNum)
                        HStack{
                            Text(currTrain.stops.first!.departureTime + " - " +  currTrain.stops.first!.station)
                        }
                        HStack{
                            Text(currTrain.stops.last!.departureTime + " - " +  currTrain.stops.last!.station)
                        }
                    }
                }
                Section{
                    ForEach(currTrain.stops){ fermata in
                        VStack(alignment: .leading){
                            HStack{
                               var icona = checkFermata(departure: fermata.arrivalTime)
                                // Image(systemName: "circle.inset.filled")
                                Image(systemName: icona)
                                    .foregroundColor(Color("customLightblue"))
                                    
                                Text(fermata.station)
                            }
                            Text("Arrival : " + fermata.arrivalTime)
                            Text("Departure : "+fermata.departureTime)
                        }
                    }
                }header: {
                    Text("Fermate")
                }
            }
        }.navigationTitle("Train")
    }
}

struct TrainpageView_Previews: PreviewProvider {
    static var previews: some View {
        TrainpageView(currTrain: treno1)
    }
}
