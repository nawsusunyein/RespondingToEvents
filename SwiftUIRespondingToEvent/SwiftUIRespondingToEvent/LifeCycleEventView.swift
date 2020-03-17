//
//  LifeCycleEventView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct LifeCycleEventView: View {
    var body: some View {
        VStack{
            Text("Life cycle event view")
        }.onAppear{
            print("Entered view did appear")
        }.onDisappear{
            print("Entered view did disappear")
        }
        
    }
}

struct LifeCycleEventView_Previews: PreviewProvider {
    static var previews: some View {
        LifeCycleEventView()
    }
}
