//
//  TextFieldLayout.swift
//  Login UI
//
//  Created by Vitor Hugo on 17/04/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct DefaultTextFieldLayout: View {
    
    @State var text: String = ""
    @State var icon: String
    @State var placeHolder: String
    
    var body: some View {
        TextField(placeHolder, text: $text)
            .padding()
            .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color.yellowColor, lineWidth: 2))
            .padding()
            .overlay(
                HStack {
                    Spacer()
                    Image(systemName: icon)
                        .font(.headline)
                        .padding(25)
                }
                .padding()
        )
            .foregroundColor(.yellowColor)
            .padding(.bottom)
    }
}

