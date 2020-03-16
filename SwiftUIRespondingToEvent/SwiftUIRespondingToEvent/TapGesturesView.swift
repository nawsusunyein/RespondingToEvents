//
//  TapGesturesView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/16.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct TapGesturesView: View {
    var body: some View {
        VStack{
            Text("Tap me")
                .onTapGesture {
                    print("Tapped")
            }
            
            Image("strawberry-surprise")
                .onTapGesture(count:2){
                    print("Double tapped")
            }
        }
    }
}

struct TapGesturesView_Previews: PreviewProvider {
    static var previews: some View {
        TapGesturesView()
    }
}
