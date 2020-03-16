//
//  SegmentedViewTest.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/16.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct SegmentedViewTest: View {
    
    let colors = ["red","green","blue"]
    @State private var selectedColor = 0
    
    var body: some View {
        VStack{
            Picker(selection:$selectedColor, label: Text("What is your favorite color?")){
                ForEach(0 ..< colors.count){index in
                    Text(self.colors[index]).tag(index)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            Text("Your favorite color is \(colors[selectedColor])")
        }
    }
}

struct SegmentedViewTest_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedViewTest()
    }
}
