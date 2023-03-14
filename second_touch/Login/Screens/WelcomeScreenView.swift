//
//  WelcomeScreenView.swift
//  second_touch
//
//  Created by Bluff on 14.03.2023.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("onboard")
                    Spacer()
                    PrimaryButton(title: "Get started")
                    NavigationLink(
                        destination: SignInScreenView(),
                        label: {
                            Text("Sign in")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("PrimaryColor"))
                                .padding()
                                .frame(maxWidth:.infinity)
                                .background(Color.white)
                                .cornerRadius(50)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                                .padding(.vertical)
                        })
                        .navigationBarHidden(true)
                    LoginButton(title: "Login")
                    
                    HStack {
                        Text("New around here?")
                        Text("Sign in")
                            .foregroundColor(Color("PrimaryColor"))
                    }
                }
                .padding()
            }
        }
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth:.infinity)
            .padding()
            .background(Color("PrimaryColor"))
            .cornerRadius(50)
    }
}

struct LoginButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color("PrimaryColor"))
            .padding()
            .frame(maxWidth:.infinity)
            .background(Color.white)
            .cornerRadius(50)
            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
            .padding(.vertical)
    }
}
