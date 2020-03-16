//
//  PickerSelectionViewTest.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/16.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct PickerSelectionViewTest: View {
    
    let colors  = ["red","yellow","green"]
    @State private var selectedColor = 0
    
    var body: some View {
        VStack{
            Picker(selection:$selectedColor,label:Text("Please selection one color")){
                ForEach(0 ..< colors.count){
                    Text(self.colors[$0])
                }
            }
            
            Text("You selected \(self.colors[selectedColor])")
        }
    }
}

struct PickerSelectionViewTest_Previews: PreviewProvider {
    static var previews: some View {
        PickerSelectionViewTest()
    }
}
