//
//  GeometryViewTest.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//

import SwiftUI

struct GeometryViewTest: View {
    var body: some View {
        GeometryReader { reader in // 1
            ZStack {
                Color.white
                    .coordinateSpace(name: "white")
                EllipseView()
                    .frame(width: 400.0, height: 800.0)
                    .coordinateSpace(name: "ellipse")
                TopView()
                                        .padding()
                    
            }
        }
    }
}

struct GeometryViewTest_Previews: PreviewProvider {
    static var previews: some View {
        GeometryViewTest()
    }
}
