//
//  ContentView.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 14/11/22.
//

import SwiftUI
import CoreData
import SpriteKit

extension Color {
    static let mainGreen = Color("mainGreen")
    static let secondGreen = Color("secondGreen")
    static let customBlue = Color("customBlue")
    static let customLightBlue = Color("customLightblue")
}

struct ContentView: View {
//    @Environment(\.managedObjectContext) private var viewContext
//
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Treni.trainNum, ascending: true)],
//        animation: .default)
//    private var ListaTreni: FetchedResults<Treni>
    var scene: SKScene {
        let scene = LaunchScene()
        scene.size = CGSize(width: 216, height: 216)
        scene.scaleMode = .fill
        return scene
    }
    
    var body: some View {
        // 3. Using the SpriteView, show the game scene in your SwiftUI view
        //    You can even use modifiers!
        SpriteView(scene: self.scene)
            .frame(width: 256, height: 256)
            .ignoresSafeArea()
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
