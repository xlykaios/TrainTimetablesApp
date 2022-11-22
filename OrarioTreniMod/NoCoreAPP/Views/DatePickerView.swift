//
//  DatePickerView.swift
//  OrarioTreniMod
//
//  Created by Antonio Giordano on 16/11/22.
//

import SwiftUI

struct DatePickerView: View {
    @State var selectedDate : Date
    var body: some View {
        DatePicker("", selection: $selectedDate,in: Date()...)
            .datePickerStyle(.graphical)
            .labelsHidden()
            .padding()
        
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView(selectedDate: Date())
    }
}
