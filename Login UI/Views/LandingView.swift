//
//  ContentView.swift
//  Login UI
//
//  Created by Vitor Hugo on 16/04/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ZStack {
            Background(background: "abstract")
            
            VStack {
                HStack {
                    Greetings(logo: "logo", name: "Vitor")
                    Spacer()
                }
                .padding([.leading, .bottom, .trailing], 20.0)
                
                Spacer()
                
                DefaultButtonLayout(title: "Sign Up")
                
                AlternativeButtonLayout(title: "Sign In", labelColor: .yellowColor, fillColor: .white)
                
                
            }
        }
    }
}

struct LoginView: View {
    
    @State private var text1: String = ""
    
    var body: some View {
        ZStack {
            Background(background: "background1")
            
            VStack {
                HStack {
                    Greetings(logo: "logo", name: "Vitor")
                    Spacer()
                }
                .padding([.leading, .bottom, .trailing], 20.0)
                
                Spacer()
                
                VStack {
                    DefaultTextFieldLayout(icon: "envelope", placeHolder: "Email")
                    
                    DefaultTextFieldLayout(icon: "lock", placeHolder: "Password")
                    
                    TextButton(title: "Forgot Password?")
                }
                
                Spacer()
                
                AlternativeButtonLayout(title: "Sign In", labelColor: .white, fillColor: .yellowColor)
            }
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}

struct Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}











