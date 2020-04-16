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
            Image("abstract")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Image("logo")
                            .resizable()
                            .frame(width: 75, height: 75)
                        
                        Text("Welcome,")
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
                    .padding(.bottom)
                
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
                
                
            }
        }
    }
}

struct LoginView: View {
    
    @State private var text1: String = ""
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Image("logo")
                            .resizable()
                            .frame(width: 75, height: 75)
                        
                        Text("Welcome,")
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
                
                VStack {
                    TextField("Email", text: $text1)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color(red: 1.00, green: 0.83, blue: 0.09), lineWidth: 2))
                        .padding()
                        .overlay(
                            HStack {
                                Spacer()
                                Image(systemName: "envelope")
                                    .font(.headline)
                                    .padding(25)
                            }
                            .padding()
                    )
                        .foregroundColor(.yellow)
                        .padding(.bottom)
                    
                    TextField("Password", text: $text1)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color(red: 1.00, green: 0.83, blue: 0.09), lineWidth: 2))
                        .padding()
                        .overlay(
                            HStack {
                                Spacer()
                                Image(systemName: "lock")
                                    .font(.headline)
                                    .padding(30)
                            }
                            .padding()
                    )
                        .foregroundColor(.yellow)
                        .padding(.bottom)
                    
                    Button(action: {}, label: {
                        Text("Forgot password?")
                            .font(.custom("Helvetica Neue", size: 16))
                            .fontWeight(.regular)
                            .underline()
                            .font(.body)
                            .foregroundColor(Color(red: 1.00, green: 0.83, blue: 0.09))
                    })
                }
                
                //            TextField("Enter some text")
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                //            .padding(.horizontal, 15)
                
                Spacer()
                
                Button(action: { }, label: {
                    Text("Sign Up")
                        .font(.custom("Helvetica Neue", size: 20))
                        .frame(width: 300, alignment: .center)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(red: 1.00, green: 0.83, blue: 0.09))
                        .cornerRadius(.infinity)
                })
                    .padding(.bottom)
                
                
            }
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
