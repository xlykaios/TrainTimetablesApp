//
//  SwiftUIView.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 21/11/22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        List{
            Section{
                Text("mammt")
            }header: {
                Text("Chiama")
            }
            Section{
                HStack {
                    Image(systemName: "globe")
                    Text("www.aiuto.com")
                    
                }
            }header: {
                Image(systemName: "globe")
                
            }
            .listSectionSeparatorTint(.white)
        }
        .listStyle(.plain)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
