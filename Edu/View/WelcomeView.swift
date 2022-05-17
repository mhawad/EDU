//
//  WelcomeView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {

            ZStack (alignment: .top){
                Color("Gray")
                
                WaterShape()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color ("AccentColor"), Color ("Gray")]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                    )
                    .rotationEffect(Angle(degrees: 180))
                    .shadow(radius: 10)
                    .ignoresSafeArea()
                    .frame(height: UIScreen.main.bounds.height * 0.7)
                
                VStack {
                    Spacer()
                    
                    Text("Welcome to EDU")
                        .font(.system(size: 45, weight:.bold, design: .serif))
                    Text("High School Academy")
                        .font(.headline)
                        .padding(.bottom)
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .shadow(radius: 5)
                    
                    Spacer()
                    Text("A community of lifelong learners, responsible global citizens, and champions of our own success.")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink {
                       MainTabView()
                    } label: {
                       Text("Continue") 
                        .foregroundColor(Color("AccentColor"))
                        .font(.title3)
                        .frame(maxWidth: .infinity, maxHeight: 55)
                        .padding(.horizontal, 20)
                        .background(Color("Yellow"))
                        .clipShape(Capsule())
                        .padding()
                      
                    }
                    

                    
                    Spacer()
                }
            }
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

