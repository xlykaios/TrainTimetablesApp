//
//  HomeView.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 14/11/22.
//

import SwiftUI


struct HomeView: View {
    @State var arrivalTime = Date()
    @State var departureTime = Date()
    @State var showArrivalPicker : Bool = false
    @State var showDeparturePicker : Bool = false
    var body: some View {
        VStack {
          EllipseView()
                .padding(.bottom, -400.0)
                .offset(y: 180)
            ScrollView{
                TopView()
                    .frame(width: 430.0, height: 100.0)
                    .padding(.bottom, 5.0)
                    .offset(y: 10)
                //                .ignoresSafeArea(.keyboard,edges: .bottom)
                //                //.ignoresSafeArea()
                //                .hasScrollEnabled(false)
                //                .edgesIgnoringSafeArea(.bottom)
                MiddleBarView()
                    .padding(.top,-10.0)
    
                //.offset(y: -215)
            }.scrollDisabled(true)
            VStack{
                NearStationsListView()
                    .padding(.vertical, -130.0)
                   // .offset(y: -123)
            }//.scrollDisabled(true)
            //.ignoresSafeArea(.keyboard)
        }.ignoresSafeArea(.keyboard)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
