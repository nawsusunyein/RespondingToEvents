//
//  DatePickerViewTest.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/16.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct DatePickerViewTest: View {
    
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    @State private var birthDate : Date = Date()
    
    var body: some View {
        VStack{
            DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date){
                Text("Select date")
            }
            
            Text("Selected birthday is \(birthDate,formatter: dateFormatter)")
        }
    }
}

struct DatePickerViewTest_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerViewTest()
    }
}
