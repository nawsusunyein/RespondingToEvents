//
//  ContentView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/16.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let componentsList = ["Toggle Switch","Tappable Button","Text Fields","Slider","Picker Selection View","Date Picker View","Segmented View"]
    
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination:ToggleSwitchView()){
                    Text(componentsList[0])
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination:TappableButtonView()){
                    Text(componentsList[1])
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination:TextFieldView()){
                    Text(componentsList[2])
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination:SliderTestView()){
                    Text(componentsList[3])
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination:PickerSelectionViewTest()){
                    Text(componentsList[4])
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination:DatePickerViewTest()){
                    Text(componentsList[5])
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination:SegmentedViewTest()){
                    Text(componentsList[6])
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }.buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
