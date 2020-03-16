//
//  StepperTestView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/16.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct StepperTestView: View {
    
    @State private var age = 18
    @State private var ageOfSis = 0
    
    var body: some View {
        VStack{
            Stepper("Enter your age",value: $age,in: 0...80)
             Text("Your age is \(age)")
            
            Stepper("Enter your sister age",onIncrement: {
                self.ageOfSis += 1
                print("your sister age is \(self.ageOfSis)")
            },onDecrement: {
                self.ageOfSis -= 1
                print("your sister age is \(self.ageOfSis)")
            })
            
            Text("Your sister age is \(ageOfSis)")
        }
        
    }
}

struct StepperTestView_Previews: PreviewProvider {
    static var previews: some View {
        StepperTestView()
    }
}
