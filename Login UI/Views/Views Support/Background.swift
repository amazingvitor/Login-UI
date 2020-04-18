//
//  Background.swift
//  Login UI
//
//  Created by Vitor Hugo on 17/04/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct Background: View {
    @State var background: String
    
    var body: some View {
        Image(background)
            .resizable()
            .edgesIgnoringSafeArea(.all)
    }
}


