//
//  SecondContentView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct SecondContentView: View {
    
    let componentsList = ["Tap Gesture Content Shape","Add Gesture to View"]
    var body: some View {
        List{
            NavigationLink(destination:TapGestureContentShape()){
                Text(componentsList[0])
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }.buttonStyle(PlainButtonStyle())
            NavigationLink(destination:GestureToView()){
                Text(componentsList[1])
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
            }.buttonStyle(PlainButtonStyle())
        }
    }
}

struct SecondContentView_Previews: PreviewProvider {
    static var previews: some View {
        SecondContentView()
    }
}
