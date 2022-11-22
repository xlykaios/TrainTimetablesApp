//
//  NearStationsListView.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//

import SwiftUI


// MARK: CODICE SENZA COREDATA

struct NearStationsListView: View {


    enum FilterType {
        case none ,isFavourite, isRecent
    }


    @ObservedObject var StationsVM = StationsViewModel()
    @ObservedObject var TrainsVM = TrainsViewModel()
    // @State var update : Bool = false
    
    let filter: FilterType = .isRecent

    var filteredTrains : [oldTrain]{
        switch filter{
        case .none:
            return TrainsVM.TrainList
        case .isFavourite:
            return TrainsVM.TrainList.filter{$0.isFavourite}
        case .isRecent:
            return TrainsVM.TrainList.filter{$0.isRecent}
        }
    }
    @State var pickerSelection : Bool = true
    var body: some View {
        
            List{
                Section{
                    ForEach(StationsVM.Stations){
                        Station in NavigationLink{
                        }label:{
                            NearStationsListRow(currStation: Station)
                        }
                    }
                } header: {
                    Text("Stations Nearby")
                }
                
                Section{
                    Picker(selection: $pickerSelection, label: Text("")) {
                        Text("Recent Trains").tag(true)
                        Text("Favourites").tag(false)
                    } .padding(.top, 1.0)
                    // .pickerStyle(.segmented)
                        .pickerStyle(.menu)
                    
                    if(pickerSelection){
                        ForEach(TrainsVM.TrainList.filter{$0.isRecent}){
                            Train in NavigationLink{
                                TrainpageView(currTrain: Train)
                            }label:{
                                TrainListRow(currTrain: Train)
                            }.swipeActions(edge:.trailing){
                                Button{
                                    TrainsVM.toggleFavourite(PickedTrain: Train, fromArray: &TrainsVM.TrainList)
                                }label:{
                                    Label("Star", systemImage: "star.fill")
                                }.tint(.yellow)
                            }
                        }
                    }else{
                        ForEach(TrainsVM.TrainList.filter{$0.isFavourite}){
                            Train in NavigationLink{
                                TrainpageView(currTrain: Train)
                            }label:{
                                TrainListRow(currTrain: Train)
                            }.swipeActions(edge:.trailing){
                                Button(role: .destructive){
                                }label:{
                                    Label("Star", systemImage: "star.slash.fill")
                                }.tint(.red)
                            }
                        }
                        
                    
                    
                    
                }
            }
            
            .scrollContentBackground(.hidden)
            //.scrollDisabled(pickerSelection)
        } .scrollContentBackground(.hidden)
    }
}

struct NearStationsListView_Previews: PreviewProvider {
    static var previews: some View {
        NearStationsListView()
    }
}

