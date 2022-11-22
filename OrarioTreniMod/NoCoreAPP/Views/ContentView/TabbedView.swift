//
//  TabbedView.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//

import SwiftUI

struct TabbedView: View {
    var body: some View {
        NavigationView{
            TabView{
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Main")
                    }
                Text("Trains")
                    .tabItem {
                        Image(systemName: "tram")
                        Text("Trains")
                    }
                Text("Stations")
                    .tabItem {
                        Image(systemName: "arrow.triangle.branch")
                        Text("Stations")
                    }
                Text("Tickets")
                    .tabItem {
                        Image(systemName: "wallet.pass")
                        Text("Tickets")
                    }
                Text("More")
                    .tabItem {
                        Image(systemName: "slider.horizontal.3")
                        Text("More")
                        
                    }
            }.tabViewStyle(.automatic)
            .padding(.bottom, -1.0)
                .ignoresSafeArea(.keyboard, edges: .bottom)
        }
    }
}

struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
