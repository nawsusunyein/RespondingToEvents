//
//  SliderTestView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/16.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct SliderTestView: View {
    @State private var celsius : Double = 0.0
    var body: some View {
        VStack{
            Slider(value: $celsius, in: -100...100, step: 0.1)
            Text("\(celsius) is \(celsius * 9 / 5 + 32) Fahrenheit")
        }
    }
}

struct SliderTestView_Previews: PreviewProvider {
    static var previews: some View {
        SliderTestView()
    }
}
