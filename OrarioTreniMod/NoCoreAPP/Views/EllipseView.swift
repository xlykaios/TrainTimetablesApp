//
//  EllipseView.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 14/11/22.
//

import SwiftUI

struct EllipseView: View {
    var body: some View {
        Ellipse()
            .padding()
            .frame(width: 853.0, height: 384.0)
            .offset(y : -330)
       // .foregroundColor(.mainGreen)
        .foregroundColor(.customBlue)
    }
}

struct EllipseView_Previews: PreviewProvider {
    static var previews: some View {
        EllipseView()
    }
}
