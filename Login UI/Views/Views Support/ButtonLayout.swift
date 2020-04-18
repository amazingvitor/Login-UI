//
//  ButtonLayout.swift
//  Login UI
//
//  Created by Vitor Hugo on 17/04/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct DefaultButtonLayout: View {
    
    @State var title: String
    
    var body: some View {
        Button(action: { }, label: {
            Text(title)
                .font(.custom("Helvetica Neue", size: 20))
                .frame(width: 300, alignment: .center)
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color.white, lineWidth: 2))
        })
            .padding(.bottom)
    }
}

struct AlternativeButtonLayout: View {
    
    @State var title: String
    @State var labelColor: Color
    @State var fillColor: Color
    
    var body: some View {
        Button(action: { }, label: {
            Text(title)
                .font(.custom("Helvetica Neue", size: 20))
                .frame(width: 300, alignment: .center)
                .padding()
                .foregroundColor(labelColor)
                .background(fillColor)
                .cornerRadius(.infinity)
        })
            .padding(.bottom)
    }
}

struct TextButton: View {
    
    @State var title: String
    
    var body: some View {
        Button(action: {}, label: {
            Text(title)
                .font(.custom("Helvetica Neue", size: 16))
                .fontWeight(.regular)
                .underline()
                .font(.body)
                .foregroundColor(Color.yellowColor)
        })
    }
}
