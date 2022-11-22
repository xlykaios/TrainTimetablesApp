//
//  StationsViewModel.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//

import Foundation

class StationsViewModel : ObservableObject{
    @Published var Stations : [Station] = [station1,station2,station3,station4]
}
