//
//  NearStationsListRow.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//

import SwiftUI

struct NearStationsListRow: View {
    var currStation : Station
    var body: some View {
        Text(currStation.stationBrand + " - " + currStation.stationName)
    }
}

struct NearStationsListRow_Previews: PreviewProvider {
    static var previews: some View {
        NearStationsListRow(currStation: station1)
    }
}
