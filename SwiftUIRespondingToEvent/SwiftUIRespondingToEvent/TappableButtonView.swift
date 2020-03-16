//
//  TappableButtonView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/16.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct TappableButtonView: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack{
            Button(action:{
                self.showDetails.toggle()
            }){
                Text("Welcome")
                    .padding()
                    .background(Color.yellow)
                    .foregroundColor(Color.black)
                    .cornerRadius(10)
            }
            
            if(showDetails){
                Text("Please follow us on twitter")
            }
        }
    }
}

struct TappableButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TappableButtonView()
    }
}
