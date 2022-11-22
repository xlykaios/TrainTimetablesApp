//
//  OrarioTreniModApp.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 14/11/22.
//

import SwiftUI

@main
struct OrarioTreniModApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
         TabbedView()
            //ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
