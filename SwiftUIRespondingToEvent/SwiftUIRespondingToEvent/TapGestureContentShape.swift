//
//  TapGestureContentShape.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/16.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct TapGestureContentShape: View {
    var body: some View {
        VStack{
            Image("strawberry-surprise").resizable().frame(width:50,height:50)
            Spacer().frame(height:50)
            Text("Testing image")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("tapped vstack")
        }
    }
}

struct TapGestureContentShape_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureContentShape()
    }
}
