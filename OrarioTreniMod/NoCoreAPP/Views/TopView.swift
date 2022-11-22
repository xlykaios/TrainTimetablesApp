//
//  TopView.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 14/11/22.
//

import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(15)
            .shadow(color: .gray, radius:0.1)
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 0.0, height: 30.0)
            .padding(.all, 21.0)
            .background(Color .customLightBlue)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .scaleEffect(configuration.isPressed ? 1.0 : 1.3)
            .animation(.easeIn(duration: 0.2), value: configuration.isPressed)
            .shadow(color: .gray, radius:1)
    }
}

struct TopView: View {
    @State public var Departure = ""
    @State public var Arrival = ""
    
    var body: some View {
        HStack{
            Button {
//                var temp: String = ""
//                temp = Arrival
//                Departure = temp
//                Arrival = Departure
            swapText(Arrival: &Arrival, Departure: &Departure)
            } label: {
                Image(systemName: "arrow.up.arrow.down") .renderingMode(.original)
                    .scaleEffect(1.5)
                    .tint(.white)
            }.padding(.leading, 38.0)
                .padding(.trailing,0.0)
            VStack{
                TextField("Departure", text: $Departure)
                    .textFieldStyle(OvalTextFieldStyle())
                    .padding(/*@START_MENU_TOKEN@*/.top, 60.0/*@END_MENU_TOKEN@*/)
                    .padding(.trailing,5)
                    .shadow(color: .black, radius: 1, x: 0, y: 2)
                TextField("Arrival", text: $Arrival)
                    .textFieldStyle(OvalTextFieldStyle())
                    .padding(/*@START_MENU_TOKEN@*/.bottom, 60.0/*@END_MENU_TOKEN@*/)
                    .padding(.trailing,5)
                    .shadow(color: .black, radius: 1, x: 0, y: 2)
            }
            
            Button {
     // Search Func
            } label: {
                Image(systemName: "magnifyingglass")
            }
                .buttonStyle(GrowingButton())
                .padding(.trailing, 33.0)
                .shadow(color: .black, radius: 1, x: 0, y: 2)
                
        }
    }
}
func swapText (Arrival : inout String, Departure : inout String){
    var temp = Departure
    Departure = Arrival
    Arrival = temp
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
