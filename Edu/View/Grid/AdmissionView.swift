//
//  AdmissionView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI

struct AdmissionView: View {
    
   

    var body: some View {
        
        ZStack (alignment: .top){
            Color("Gray")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .trailing, spacing: 20){
                    
                    
                 RoundedRectangle(cornerRadius: 20)
                    .fill(Color("Red").opacity(0.1))
                    .shadow(radius: 20)
                    .frame(height: 500)
                    .overlay(
                        VStack{
                            Text("HOW TO ENROLL?")
                                .font(.system(size: 30, weight: .semibold))
                                .foregroundColor(Color("AccentColor"))
                                .frame(maxWidth: .infinity,
                                       alignment: .leading)
                                .padding()
                            
                            Text("In Wake County, students are assigned to a base elementary, middle, and high school for their Wake County home address. (Your home address is also referred to as your domicile in school board policy 4150.)\nYou will start by completing the online enrollment form as outlined below, then await instructions from your child’s base school about how to complete the enrollment process.\nFamilies who are not able to complete the online process should contact their base school’s data manager. A school representative will contact you by telephone to assist with completing the online enrollment process.\n Information for international students is at the bottom of this page.")
                                .padding()
                        })
                
                
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("Red").opacity(0.1))
                    .shadow(radius: 20)
                    .frame(height: 500)
                    .overlay(
                        VStack{
                            Text("ENROLL ONLINE")
                                .font(.system(size: 30, weight: .semibold))
                                .foregroundColor(Color("AccentColor"))
                                .frame(maxWidth: .infinity,
                                       alignment: .leading)
                                .padding()
                            Link("Enroll for 2021-22 | Iniciar una solicitud en español para 2021-22",
                                 destination: (
                                    (URL(string: "https://www.wcpss.net/Page/46102") ?? URL( string: "https://www.google.com"))! ) )
                            Text("In Wake County, students are assigned to a base elementary, middle, and high school for their Wake County home address. (Your home address is also referred to as your domicile in school board policy 4150.)\nYou will start by completing the online enrollment form as outlined below, then await instructions from your child’s base school about how to complete the enrollment process.\nFamilies who are not able to complete the online process should contact their base school’s data manager. A school representative will contact you by telephone to assist with completing the online enrollment process.\n Information for international students is at the bottom of this page.")
                                .padding()
                        })
                
                
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("Red").opacity(0.1))
                    .shadow(radius: 20)
                    .frame(height: 300)
                    .overlay(
                        VStack{
                            Text("HAVE QUESTIONS?")
                                .font(.system(size: 30, weight: .semibold))
                                .foregroundColor(Color("AccentColor"))
                                .frame(maxWidth: .infinity,
                                       alignment: .leading)
                                .padding()
                            Text("We encourage you to connect with us through our PowerSchool Community by web or chat for immediate access to our support experts. \nYou can also call us on PowerSchool Enrollment (InfoSnap) \nSupport Line, toll free at (866) 434-6276 or email us at support@registration.com.")
                    
                        })
                
                
                
                
                
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("Red").opacity(0.1))
                    .shadow(radius: 20)
                    .frame(height: 500)
                    .overlay(
                        VStack{
                            Text("What is the required documents to enroll your child?")
                                .font(.system(size: 30, weight: .semibold))
                                .foregroundColor(Color("AccentColor"))
                                .frame(maxWidth: .infinity,
                                       alignment: .leading)
                                .padding()
                            
                            Text("*A certified copy of your child's birth certificate\n*Proof of your Wake County address (domicile) in the name of the birth parent or legal custodian, such as current water, gas, or electric bill, newly signed lease, or offer to purchase agreement.\n*Photo ID of birth parent or legal custodian.\n*Your child's immunization record (if available).\n*Academic records from previous schools (if available).\n*Any custody documents.")
                                .padding()
                        })
                
                    
             
                    
                    
         
                    
                    
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
                        Text("Apply \nnow")
                            .foregroundColor(Color("AccentColor"))
                            .font(.system(size: 25, weight:.bold, design: .serif))
                            .multilineTextAlignment(.center)
                            .padding()
                    )
            }
        }
    }
}

struct AdmissionView_Previews: PreviewProvider {
    static var previews: some View {
        AdmissionView()
    }
}
