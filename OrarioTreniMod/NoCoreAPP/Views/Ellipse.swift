//
//  Ellipse.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 14/11/22.
//

import SwiftUI

struct Ellipse: View {
    var body: some View {
        Ellipse()
            .padding()
            .frame(width: 853.0, height: 284.0)
            .offset(y : -330)
        .foregroundColor(.mainGreen)
    }
}

struct Ellipse_Previews: PreviewProvider {
    static var previews: some View {
        Ellipse()
    }
}
