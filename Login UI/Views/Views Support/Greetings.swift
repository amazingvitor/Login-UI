//
//  Greetings.swift
//  Login UI
//
//  Created by Vitor Hugo on 17/04/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct Greetings: View {
    
    @State var logo: String
    @State var name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(logo)
                .resizable()
                .frame(width: 75, height: 75)
            
            Text("Welcome,")
                .font(.custom("Helvetica Neue", size: 40))
                .fontWeight(.regular)
                .foregroundColor(.white)
            
            Text(name)
                .font(.custom("Helvetica Neue", size: 40))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding([.top, .leading], 15.0)
    }
}
