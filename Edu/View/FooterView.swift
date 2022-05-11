//
//  FooterView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/10/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        
        VStack {
            HStack{
                Image("fb")
                    .resizable()
                    .frame(width: 35, height: 35)
                
                Image("twitter")
                    .resizable()
                    .frame(width: 35, height: 35)
                
                Image("YouTube")
                    .resizable()
                    .frame(width: 80, height: 35)
                
                Image("inst")
                    .resizable()
                    .frame(width: 35, height: 35)
            }
            .padding(.top)
            
            Text("1120 Buck Jones Road \nRaleigh, NC 27606")
                .font(.caption)
            
            HStack {
                Link("Get Directions", destination: URL(string: "https://www.google.com/maps/dir/Rolesville,+NC+27571/35.7692583,-78.7421796/@35.8354502,-78.737675,11z/data=!3m1!4b1!4m8!4m7!1m5!1m1!1s0x89ac4e3354328f81:0x5e91b662f97ccc7f!2m2!1d-78.4553013!2d35.9189174!1m0?hl=en-US")!)
                    .padding()
                Image(systemName: "location.fill")
            }
    

            Text("Phone: (919) 264-1340")
                .font(.caption)
            
            Text("Email: info@theacademy.org")
                .font(.caption)
                .padding(.bottom)
        }
        .ignoresSafeArea()
       
        .frame(maxWidth: .infinity,
               maxHeight: 200)
        .background(Color("Yellow"))
        
        
        
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
