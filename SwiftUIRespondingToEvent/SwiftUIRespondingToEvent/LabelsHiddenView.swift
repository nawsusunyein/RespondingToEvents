//
//  LabelsHiddenView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct LabelsHiddenView: View {
    @State private var selectedNumber = 0
    @State private var age = 25
    var body: some View {
        VStack{
            Picker("Select a number",selection: $selectedNumber){
                ForEach(0..<10){
                    Text("Num \($0)")
                }
            }.labelsHidden()
            Text("Tap you age to show")
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
            Stepper("Tap you age",value: $age,in: 0...120).labelsHidden()
            Text("your age is \(age)")
        }
    }
}

struct LabelsHiddenView_Previews: PreviewProvider {
    static var previews: some View {
        LabelsHiddenView()
    }
}
