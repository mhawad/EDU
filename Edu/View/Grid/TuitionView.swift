//
//  TuitionView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/11/22.
//

import SwiftUI

struct TuitionView: View {
    var body: some View {
        
        ZStack (alignment: .top){
            Color("Gray")
                .ignoresSafeArea()
            
            
            ScrollView {
                VStack(alignment: .trailing, spacing: 20){
                    Image("students")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding()
                        .overlay(
                            Text("Investing in our Future Leaders")
                                .font(.headline)
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)
                                .background(.red.opacity(0.5))
                                .cornerRadius(20)
                            , alignment: .bottom
                        )
                    
                    TuitionTableView()
                        .scaledToFit()
                        .padding()
                    
                    
                    
                    VStack (alignment: .leading, spacing: 10) {
                        Text("Payment Options")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        
                        Text("Three Payment Options for 2022-2023:")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text("1. Pay in Full with a 2% discount")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        
                        Text("Total family tuition and fees, less the 2% discount, must be received along with the signed re-enrollment contract by Wednesday, February 23, 2022. Otherwise, the 2% discount will be forfeited, and the full amount of tuition, along with any applicable fees, will be charged.  Payment is made directly to the school.")
                            .padding(.leading, 20)
                            .multilineTextAlignment(.leading)
                        
                        Text("2. Two-Pay Plan")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        
                        Text("Total family tuition and fees are divided by two. The first payment must be received along with the signed re-enrollment contract by Wednesday, February 23, 2022. The second payment is due on or before August 1, 2022. You will receive an email reminder in July 2022. Both payments are made directly to the school.")
                            .padding(.leading, 20)
                            .multilineTextAlignment(.leading)
                        
                        Text("3. Ten-Month Payment Plan through FACTS")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        
                        Text("Trinity Academy uses the FACTS Payment Program for this option.\nA $400 FACTS payment fee is added to the total family tuition and fees, and this number is divided by 10.  The first monthly payment (paid directly to the school) must be received along with the signed re-enrollment contract by February 23, 2022.  The remaining nine monthly payments will be drafted on the 5th of each month beginning on April 5, 2022. Automatic bank draft is required through FACTS; you will be contacted with details and instructions regarding how to complete the FACTS payment agreement.  An annual processing fee of $50 will be drafted by FACTS upon setup of the FACTS agreement.")
                            .padding(.leading, 20)
                            .multilineTextAlignment(.leading)
                            .padding(.bottom)
                        
                    Text("NOTE: If you enroll or re-enroll your student(s) after April 2022 the number of payments is reduced to ensure that all tuition and fees are paid in full before re-enrollment in February 2023.")
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        
                           
                    }
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
                        Text("Tuition \n& Fees")
                            .foregroundColor(Color("AccentColor"))
                            .font(.system(size: 25, weight:.bold, design: .serif))
                            .multilineTextAlignment(.center)
                            .padding()
                    )
                
                
            }
            
        }
    }
}





struct TuitionView_Previews: PreviewProvider {
    static var previews: some View {
        TuitionView()
    }
}
