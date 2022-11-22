//
//  MiddleBarView.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 15/11/22.
//

import SwiftUI
extension View{
    func hasScrollEnabled(_ value: Bool) -> some View{
        self.onAppear(){
            UITableView.appearance().isScrollEnabled = value
        }
    }
}
struct MiddleBarView: View {
    @State var isRoundtripToggled : Bool = true
    @State var selectedDepartureDate = Date()
    @State var selectedArrivalDate = Date()
    @State var showDeparture : Bool = true
    @State var showArrival : Bool = false
    @State public var Departure = ""
    @State public var Arrival = ""


    var body: some View {
        // VStack{
        // Spacer()
        //TopView()
        // Spacer()
        
        //            HStack{
        //                Button {
        //                    print("Edit button was tapped")
        //                } label: {
        //                    Image(systemName: "arrow.up.arrow.down") .renderingMode(.original)
        //                        .scaleEffect(1.5)
        //                        .tint(.white)
        //                }.padding(.leading, 40.0)
        //                    .padding(.trailing,10.0)
        //                VStack{
        //                    TextField("Departure", text: $Departure)
        //                        .textFieldStyle(OvalTextFieldStyle())
        //                        .padding(/*@START_MENU_TOKEN@*/.top, 60.0/*@END_MENU_TOKEN@*/)
        //                        .padding(.trailing,5)
        //                        .shadow(color: .black, radius: 1, x: 0, y: 2)
        //                    TextField("Arrival", text: $Arrival)
        //                        .textFieldStyle(OvalTextFieldStyle())
        //                        .padding(/*@START_MENU_TOKEN@*/.bottom, 60.0/*@END_MENU_TOKEN@*/)
        //                        .padding(.trailing,5)
        //                        .shadow(color: .black, radius: 1, x: 0, y: 2)
        //                }
        //                Button {
        //                    print("Edit button was tapped")
        //                } label: {
        //                    Image(systemName: "magnifyingglass")
        //                }
        //                .buttonStyle(GrowingButton())
        //                .padding(.trailing, 40.0)
        //                .shadow(color: .black, radius: 1, x: 0, y: 2)
        //            }
           
        Form {
                Section{
                    HStack{
                        Image(systemName:"arrow.triangle.capsulepath")
                            .foregroundColor(.customBlue)
                        Toggle(isOn: $isRoundtripToggled) {
                            Text("Roundtrip")
                            
                        }
                    }
                    HStack{
                        Image(systemName: "clock")
                            .foregroundColor(.customBlue)
                            
                        
                        Button{
                            showDeparture.toggle()
                        }label:{
                            Text(selectedDepartureDate.formatted(
                                Date.FormatStyle()
                                    .month(.twoDigits)
                                    .day(.twoDigits)
                                    .hour(.twoDigits(amPM: .abbreviated))
                                    .minute(.twoDigits)))
                            .font(.footnote)
                        }
                        
                        .frame(width: 120.1, height: 10.0)
                        .buttonStyle(.bordered)
                        //MARK: Departure Date
                        //                        Text(selectedDepartureDate.formatted(
                        //                            Date.FormatStyle()
                        //                            .month(.twoDigits)
                        //                            .day(.twoDigits)
                        //                            .hour(.twoDigits(amPM: .abbreviated))
                        //                            .minute(.twoDigits)))
                        //                        .font(.footnote)
                        //                            .onTapGesture {
                        //                                showDeparture.toggle()
                        //                            }
                        //MARK: ShowDeparture Conditional
                        //TODO: Put an external view here for the date picker
                        //                        if(showDeparture){
                        //                            DatePickerView(selectedDate: selectedDepartureDate)
                        //
                        //
                        //                            //                            DatePicker("", selection: $selectedDepartureDate,in: Date()...)
                        //                            //                                .datePickerStyle(.graphical)
                        //                            //                                .labelsHidden()
                        //                        }
                        //TODO: Mettere il picker in una seconda view che sovrappone le cose sotto
                        //MARK: Arrival Date
                        if(isRoundtripToggled){
                            Button{
                                showArrival.toggle()
                            }label:{
                                Text(selectedDepartureDate.formatted(
                                    Date.FormatStyle()
                                        .month(.twoDigits)
                                        .day(.twoDigits)
                                        .hour(.twoDigits(amPM: .abbreviated))
                                        .minute(.twoDigits)))
                                .font(.footnote)
                            }
                            
                            .frame(width: 165.0, height: 10.0)
                            .buttonStyle(.bordered)
                            
                            //                            Text(selectedArrivalDate.formatted(
                            //                                Date.FormatStyle()
                            //                                    .month(.twoDigits)
                            //                                    .day(.twoDigits)
                            //                                    .hour(.twoDigits(amPM: .abbreviated))
                            //                                    .minute(.twoDigits)
                            //                            ))
                            //                                .font(.footnote)
                            //                                .onTapGesture {
                            //                                    showArrival.toggle()
                            //                                }.padding(.leading, 80.0)
//                            if(showArrival){
//                                DatePicker("", selection: $selectedArrivalDate, in: Date()...)
//                                    .padding(.leading, 15.0)
//                                    .datePickerStyle(.graphical)
//                                    .labelsHidden()
//                            }
                        }
                    }
                }
//            Section{
//                if(showArrival){
//                    DatePickerView(selectedDate: selectedArrivalDate)
//                }
//                if(showDeparture){
//                    DatePickerView(selectedDate: selectedDepartureDate)
//                }
//            }
// .padding(.top, -100.0)
            //.frame(width: 300.0, height: 400.0)
            //.scaledToFit()
        }
           // .padding(.top, -80.0)
            .frame(width: 400.0, height:550.0)
            .scrollContentBackground(.hidden)
            .shadow(color: .customBlue, radius: 1, x: 0, y: 2)
            .scrollDisabled(true)
            

        }
    //        if(showArrival){
//            DatePickerView(selectedDate: selectedArrivalDate)
//        }
    }
       // .frame(width: 425.0, height: 160.0)
    
func getDataView(selectedDepartureDate : Date, selectedArrivalDate : Date, showDeparture : Bool, showArrival : Bool) -> (Date,Date,Bool,Bool){
    
    return (selectedDepartureDate,selectedArrivalDate,showDeparture,showArrival)
}


struct MiddleBarView_Previews: PreviewProvider {
    static var previews: some View {
        MiddleBarView()
    }
}

