//
//  AllowsHitsTestingView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/17.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct AllowsHitsTestingView: View {
    var body: some View {
        ZStack{
            Button("Tap here"){
                print("Tapped button")
            }
            .frame(width:100,height:100)
            .background(Color.blue)
            .foregroundColor(Color.white)
            
            Rectangle()
                .fill(Color.red.opacity(0.2))
                .frame(width:300,height:300)
                .clipShape(Circle())
                .allowsHitTesting(false)
        }
    }
}

struct AllowsHitsTestingView_Previews: PreviewProvider {
    static var previews: some View {
        AllowsHitsTestingView()
    }
}
