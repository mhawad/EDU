//
//  SupportView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI

struct SupportView: View {
    var body: some View {
        ZStack (alignment: .top){
            Color("Gray")
                .ignoresSafeArea()
            
            
            
            ScrollView {
                VStack(alignment: .center, spacing: 20){
                    Spacer()
                    
                    Text("St.Thomas Academy is a registered 501(c)(3) \nprivate non-profit corporation.")
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    Text("All financial contributions are tax-deductible.")
                        .fontWeight(.bold)
                    
                    
                    
                    Text("Please consider making your charitable donations to support our academic and enrichment programs. Choose any of the methods below to contribute today!")
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("Red").opacity(0.1))
                        .shadow(radius: 20)
                        .frame(height: 500)
                        .padding()
                        .overlay(
                            VStack(alignment: .leading) {
                                HStack {
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(Color("Yellow"))
                                        .overlay(
                                            Image(systemName: "house")
                                        )
                                    
                                    
                                    Text("Checks & Money Orders")
                                        .font(.system(size: 25, weight: .semibold))
                                        .textCase(.uppercase)
                                        .foregroundColor(Color("AccentColor"))
                                    
                                }
                                .padding()
                                
                                Text("Mail to:")
                                    .font(.system(size: 23, weight: .bold))
                                    .padding()
                                
                                Text("St.Thomas Academy \n1120 Buck Jones Road \nRaleigh, NC 27606")
                                    .padding(.leading,75)
                                    .multilineTextAlignment(.leading)
                                    
                                
                                Text("Payable to:")
                                    .font(.system(size: 23, weight: .bold))
                                    .padding()
                                
                                Text("St.Thomas Academy")
                                    .padding(.leading,75)
                                
                                
                                Text("Online Contributions")
                                    .font(.system(size: 23, weight: .bold))
                                    .padding()
                                
                                Image("Donate")
                                    .resizable()
                                    .frame(width: 150, height: 55, alignment: .center)
                                    .font(.title3)
                                    .padding(.leading,75)
                                    .padding()
                                
                            }
                             .padding()
                            , alignment: .topLeading
                        )
                    
                    
                    Text("Did you know you can also support us through your daily shopping?")
                        .font(.system(size: 30, weight: .bold))
                        .padding()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("AccentColor"))
                    
                    Text("Enroll in the programs below in just a few easy steps:")
                        .font(.system(size: 30, weight: .bold))
                        .padding()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("Red"))
                    
                    
                    Group {
                        HStack {
                            Text("Click here to link your VIC Card to (#3947). HYCA receives a percentage of purchase dollars of Harris Teeter brand products.")
                                .padding()
                            Image("Harris")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(20)
                                .padding()
                        }
                    
           
                    
                    HStack {
                        Text("Link your Kroger card to the Kroger Community Rewards Program. Visit krogercommunityrewards.com or a Kroger customer service desk. Link to HYCA or #92488.")
                            .padding()
                        Image("Kroger")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(20)
                            .padding()
                    }
                    
                    
                    HStack {
                        Text("Shop and make purchases through this address: https://smile.amazon.com . We earn a percentage of sales when you select HYCA as your designated charity. Donate items off our wishlist - we have included some engaging classroom and outdoor games, activities and school supplies.")
                            .padding()
                        Image("Amazon")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(20)
                            .padding()
                    }
                    
                    }
                    Spacer()
                    FooterView()
                    
                }
                .padding(.top, 210)
                
            }
            
            
            WaterShape()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color ("AccentColor"), Color ("Gray")]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                )
                .rotationEffect(Angle(degrees: 180))
                .shadow(radius: 10)
                .ignoresSafeArea()
                .frame(height: UIScreen.main.bounds.height * 0.5)
            
            
            
            VStack {
                Text("Support Us")
                    .font(.system(size: 45, weight:.bold, design: .serif))
                Image("logo")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .shadow(radius: 5)
            }
        }
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
