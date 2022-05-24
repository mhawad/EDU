//
//  TransportationView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/11/22.
//

import SwiftUI

struct TransportationView: View {
    var body: some View {
        ZStack (alignment: .top){
            Color("Gray")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20){
                    Image("bus")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                    

                    Text("Find your transportation information \non Home Base")
                        
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Red"))
                        .padding()

                    Text("Families can find up-to-date transportation information (including route number and stop location) in your student’s Home Base/PowerSchool account. Sign up for an account at your student’s school. More information on Home Base is available at www.wcpss.net/student-information.\nIf your student is assigned to a bus but is not a bus rider, please submit a decline transportation form so we have the most up-to-date information.")
                        .padding()
                                                                                                                                       
                    
                    Divider()
                    
                    
                    Image("bus")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                    

                    Text("Families enrolling for 2022-23")
                        
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Red"))
                        .padding()

                    Text("New enrollees to WCPSS are required to fill out a Transportation Service request form when making application at their base school. The School Data Manager will enter the transportation request for the new enrollees. If you need more information on enrolling, visit Student Assignment.")
                        .padding()
                    
                    
                    Spacer()
                    FooterView()
                    
                }
                
                    .padding(.top, 170)
                }
                
                WaterShape()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color ("AccentColor"), Color ("Gray")]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                    )
                    .frame(height: UIScreen.main.bounds.height * 0.4)
                    .rotationEffect(Angle(degrees: 180))
                    .shadow(radius: 10)
                    .ignoresSafeArea()
                VStack {
                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(Color("Yellow"))
                        .shadow(radius: 10)
                        .overlay(
                            Text("Transportation")
                                .foregroundColor(Color("AccentColor"))
                                .font(.system(size: 25, weight:.bold, design: .serif))
                                .multilineTextAlignment(.center)
                                .padding()
                        )
                    
                    
                }
                
            }
        }
    }

            


struct TransportationView_Previews: PreviewProvider {
    static var previews: some View {
        TransportationView()
    }
}
