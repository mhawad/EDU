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
                VStack {
                    SearchBarView(searchText: $vm.searchText)
                    VideoView(videoID:"QqHvUnUfwvI")
                        .frame(height: UIScreen.main.bounds.height * 0.3)
                        .cornerRadius(12)
                        .padding(.horizontal, 24)

                    
                    GridView()
                    FooterView()
                
                }
                
                .padding(.top, UIScreen.main.bounds.height / 6)
                .padding()
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
                            AdmissionView()
                        } label: {
                        Text("Apply \nnow")
                            .foregroundColor(Color("AccentColor"))
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
