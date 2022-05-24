//
//  HomeView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/10/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var vm: HomeViewModel
    
    var body: some View {
        ZStack (alignment: .top){
            Color("Gray")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    SearchBarView(searchText: $vm.searchText)
                  
                    
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("Red").opacity(0.1))
                        .shadow(radius: 20)
                        .frame(height: 300)
                        .overlay(
                            Text("OUR MISSION")
                                .font(.system(size: 25, weight: .semibold))
                                .foregroundColor(Color("AccentColor"))
                                .padding()
                            , alignment: .topLeading
                        )
                        .overlay(
                            Text("The mission of ...... Academy is to provide an excellent and affordable education for students in Pre-K to 12th grades through the use of Direct Instruction and a Classical Curriculum that embodies traditional American values")
                                .font(.title3)
                                .padding(.top)
                                .padding()
                        )
                    VideoView(videoID:"QqHvUnUfwvI")
                        .frame(height: UIScreen.main.bounds.height * 0.3)
                        .cornerRadius(12)
                        .padding(.horizontal, 24)
                    
                    GridView()
                        .frame(width: 400, height: 200)
                    
                    FooterView()
                    
                }
                
                .padding(.top, UIScreen.main.bounds.height / 6)
      
            }
            
            Image("school")
                .resizable()
            //.foregroundColor(Color("AccentColor").opacity(0.5))
                .scaledToFit()
                .frame(height: 430, alignment: .top)
                .clipShape(
                    WaterShape()
                        .rotation(Angle(degrees: 180))
                    
                )
                .shadow(radius: 50)
                .ignoresSafeArea()
            
            VStack {
                Circle()
                    .fill(Color("Yellow"))
                    .frame(width: 150, height: 150)
                    .shadow(radius: 5)
                    .overlay(
                        NavigationLink {
                            AboutView()
                        } label: {
                            Text("About \nus")                            .foregroundColor(Color("AccentColor"))
                                .font(.system(size: 25, weight:.bold, design: .serif))
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                    )
                
            }
            
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
