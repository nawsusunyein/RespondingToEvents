//
//  GestureToView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct GestureToView: View {
    
    @State private var scale : CGFloat = 1.0
    var body: some View {
        ScrollView{
            VStack{
                Text("Tap Gesture")
                Image("strawberry-surprise")
                    .scaleEffect(self.scale)
                    .gesture(
                        TapGesture()
                            .onEnded{_ in
                                self.scale += 0.1
                        }
                    )
                
                Text("Long Press Gesture")
                Image("strawberry-surprise")
                .gesture(
                    LongPressGesture(minimumDuration:2)
                        .onEnded{_ in
                        print("Long Press")
                    }
                )
                Text("Drag Gesture")
                Image("strawberry-surprise")
                .gesture(
                    DragGesture(minimumDistance:50)
                        .onEnded{_ in
                        print("Dragged picture")
                    }
                )
            }
        }
    }
}

struct GestureToView_Previews: PreviewProvider {
    static var previews: some View {
        GestureToView()
    }
}
