//
//  ContentView.swift
//  Login UI
//
//  Created by Vitor Hugo on 16/04/20.
//  Copyright © 2020 Vitor Hugo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("abstract")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Image("logo")
                            .resizable()
                            .frame(width: 75, height: 75)
                        
                        Text("Hello,")
                            .font(.custom("Helvetica Neue", size: 40))
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                        
                        Text("Vitor")
                            .font(.custom("Helvetica Neue", size: 40))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .padding([.top, .leading], 15.0)
                    
                    Spacer()
                }
                .padding([.leading, .bottom, .trailing], 20.0)
                
                Spacer()
                
                Button(action: { }, label: {
                    Text("Sign Up")
                        .font(.custom("Helvetica Neue", size: 20))
                        .frame(width: 300, alignment: .center)
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color.white, lineWidth: 2))
                })
                    .padding()
                
                Button(action: { }, label: {
                    Text("Sign In")
                        .font(.custom("Helvetica Neue", size: 20))
                        .frame(width: 300, alignment: .center)
                        .padding()
                        .foregroundColor(Color(.systemYellow))
                        .background(Color.white)
                        .cornerRadius(.infinity)
                })
                    .padding(.bottom)
                
                Button(action: {}, label: {
                    Text("Forgot password?")
                        .font(.custom("Helvetica Neue", size: 16))
                        .fontWeight(.regular)
                        .underline()
                        .font(.body)
                        .foregroundColor(.white)
                        .padding()
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
