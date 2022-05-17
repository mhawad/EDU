//
//  ContactView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI
import MapKit

struct ContactView: View {
    
    
    var body: some View {
        ZStack (alignment: .top){
            Color("Gray")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 30) {
                    Spacer()
                    HStack {
                        Image(systemName: "phone")
                        Text("+1 (984) 234-0077")
                    }
                    
                    HStack {
                        Image(systemName: "at")
                        Text(" info@academy.com")
                    }
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        Text("1120 Buck Jones Road Raleigh, NC 27606")
                    }
                    
                    Link("Get Directions", destination: URL(string: "https://www.google.com/maps/dir/Rolesville,+NC+27571/35.7692583,-78.7421796/@35.8354502,-78.737675,11z/data=!3m1!4b1!4m8!4m7!1m5!1m1!1s0x89ac4e3354328f81:0x5e91b662f97ccc7f!2m2!1d-78.4553013!2d35.9189174!1m0?hl=en-US")!)
                        .padding(.all, 7)

                }
                .padding(.top, 210)
                .padding()
                
              MapTest()
                    .frame(width: 400, height: 200)
                    .cornerRadius(20)                  .padding(.all)
                Spacer()
                FooterView()
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
            
            VStack{
                
                Text("Contact Us")
                    .font(.system(size: 45, weight:.bold, design: .serif))
                Image("logo")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .shadow(radius: 5)
                
            }
            .frame(height: UIScreen.main.bounds.height * 0.1)

            
            Spacer()
            
        }
        
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
