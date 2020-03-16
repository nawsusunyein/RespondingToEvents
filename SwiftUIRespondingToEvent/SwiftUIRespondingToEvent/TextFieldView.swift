//
//  TextFieldView.swift
//  SwiftUIRespondingToEvent
//
//  Created by techfun on 2020/03/16.
//  Copyright © 2020 Naw Su Su Nyein. All rights reserved.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var name : String = ""
    @State private var password : String = ""
    
    var body: some View {
        VStack(){
            TextField("Enter you name",text :$name)
                .frame(width:200,height:50)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Hello , \(name)")
            SecureField("Enter password",text:$password)
                .frame(width:200,height:50)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Password is \(password)")
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
