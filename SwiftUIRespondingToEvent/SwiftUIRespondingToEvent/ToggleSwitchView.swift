//
//  ToggleSwitchView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/16.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ToggleSwitchView: View {
    
    @State private var showGreeting : Bool = true
    
    var body: some View {
        VStack{
            Toggle(isOn:$showGreeting){
                Text("Show welcome message")
            }.padding()
            
            if showGreeting{
                Text("Hello")
            }
        }
    }
}

struct ToggleSwitchView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSwitchView()
    }
}
