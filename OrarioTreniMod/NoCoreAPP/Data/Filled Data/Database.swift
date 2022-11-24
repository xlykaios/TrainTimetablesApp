//
//  Database.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//
//
//import Foundation
//

import Foundation
//// MARK: DATI STAZIONI
var station1 = Station(id : UUID(),stationName: "Barra",stationBrand: "EAV")
var station2 = Station(id : UUID(),stationName: "Trecase",stationBrand: "EAV")
var station3 = Station(id : UUID(),stationName: "Ercolano",stationBrand: "EAV")
var station4 = Station(id : UUID(),stationName: "Portici",stationBrand: "EAV")
var station5 = Station(id : UUID(),stationName: "Sorrento",stationBrand: "EAV")
var station6 = Station(id : UUID(),stationName: "Pompei",stationBrand: "EAV")
var station7 = Station(id : UUID(),stationName: "Napoli",stationBrand: "EAV")
//
//
//
// MARK: DATI TRENO 1
//
var stop1 = oldStops(id: UUID(),station: "Napoli C.F.", arrivalTime: "10:00" , departureTime: "10:02")
var stop2 = oldStops(id: UUID(),station: "Piazza Leopardi", arrivalTime: "10:30" , departureTime: "10:32")
var stop3 = oldStops(id: UUID(),station: "Mergellina", arrivalTime: "10:40" , departureTime: "10:42")
var stop4 = oldStops(id: UUID(),station: "Amedeo", arrivalTime: "10:50" , departureTime: "10:52")
var stop5 = oldStops(id: UUID(),station: "Montesanto", arrivalTime: "11:00" , departureTime: "11:02")
var stop6 = oldStops(id: UUID(),station: "Cavour", arrivalTime: "11:10" , departureTime: "11:12")
var stop7 = oldStops(id: UUID(),station: "Garibaldi", arrivalTime: "11:20" , departureTime: "11:22")

var line1 = [stop1,stop2,stop3,stop4,stop5,stop6,stop7]

var treno1 = oldTrain(id: UUID(), trainNum: "4430",trainBrand: "FS", Delay: 0, isFavourite: false, isRecent: true, stops: line1)

// MARK: DATI TRENO 2

var stop1_1 = oldStops(id: UUID(),station: "Garibaldi", arrivalTime: "11:00" , departureTime: "11:02")
var stop2_1 = oldStops(id: UUID(),station: "Gianturco", arrivalTime: "13:30" , departureTime: "13:32")
var stop3_1 = oldStops(id: UUID(),station: "S.Giovanni", arrivalTime: "14:40" , departureTime: "14:42")
var stop4_1 = oldStops(id: UUID(),station: "Barra", arrivalTime: "15:50" , departureTime: "15:52")
var stop5_1 = oldStops(id: UUID(),station: "S.Maria Del Pozzo", arrivalTime: "16:00" , departureTime: "16:02")
var stop6_1 = oldStops(id: UUID(),station: "S.Giorgio", arrivalTime: "17:10" , departureTime: "17:12")
var stop7_1 = oldStops(id: UUID(),station: "Portici", arrivalTime: "18:20" , departureTime: "18:22")

var line2 = [stop1_1,stop2_1,stop3_1,stop4_1,stop5_1,stop6_1,stop7_1]

var treno2 = oldTrain(id: UUID(), trainNum: "8930",trainBrand: "EAV", Delay: 0, isFavourite: true, isRecent: true, stops: line2)

// MARK: DATI TRENO 3

var stop1_2 = oldStops(id: UUID(),station: "Trecase", arrivalTime: "20:22" , departureTime: "20:24")
var stop2_2 = oldStops(id: UUID(),station: "Leopardi", arrivalTime: "20:10" , departureTime: "20:12")
var stop3_2 = oldStops(id: UUID(),station: "V.Del Monte", arrivalTime: "20:00" , departureTime: "20:02")
var stop4_2 = oldStops(id: UUID(),station: "V.S.Antonio", arrivalTime: "19:50" , departureTime: "19:52")
var stop5_2 = oldStops(id: UUID(),station: "Torre Del Greco", arrivalTime: "19:40" , departureTime: "19:42")
var stop6_2 = oldStops(id: UUID(),station: "Ercolano", arrivalTime: "19:30" , departureTime: "19:32")
var stop7_2 = oldStops(id: UUID(),station: "Portici", arrivalTime: "19:20" , departureTime: "19:22")

var line3 = [stop7_2,stop6_2,stop5_2,stop4_2,stop3_2,stop2_2,stop1_2]

var treno3 = oldTrain(id: UUID(), trainNum: "5130",trainBrand: "EAV", Delay: 0, isFavourite: false, isRecent: true, stops: line3)


