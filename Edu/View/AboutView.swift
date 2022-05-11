//
//  AboutView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI

struct AboutView: View {
    @State var curriculum = ["Pre-K","1st Grade","2nd Grade","3rd Grade","4th Grade","5th Grade","6th Grade","7th Grade"]
    
    var body: some View {
        
        ZStack (alignment: .top){
            Color("Gray")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .trailing, spacing: 20){
                    
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("Red").opacity(0.1))
                        .shadow(radius: 20)
                        .frame(height: 300)
                        .overlay(
                            Text("OUR MISSION")
                                .font(.system(size: 30, weight: .semibold))
                                .foregroundColor(Color("AccentColor"))
                                .padding()
                            , alignment: .topLeading
                        )
                        .overlay(
                            Text("The mission of ...... Academy is to provide an excellent and affordable education for students in Pre-K to 12th grades through the use of Direct Instruction and a Classical Curriculum that embodies traditional American values")
                                .font(.title2)
                                .padding(.top)
                                .padding()
                        )
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("Red").opacity(0.1))
                        .frame(height: 350)
                        .shadow(radius: 5)
                        .overlay(
                            Text("Curriculm")
                                .font(.system(size: 30, weight: .semibold))
                                .foregroundColor(Color("AccentColor"))
                                .font(.headline)
                                .padding()
                            , alignment: .topLeading
                        )
                        .overlay(
                            List {
                                ForEach ( curriculum, id: \.self) { grade in
                                    Text(grade)
                                }
                            }
                                .listStyle(PlainListStyle())
                                .padding(.top, 40)
                                .padding()
                        )
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color("Red").opacity(0.1))
                        .frame(height: 230)
                        .shadow(radius: 5)
                        .overlay(
                            Text("Teachers")
                                .font(.system(size: 30, weight: .semibold))
                                .foregroundColor(Color("AccentColor"))
                                .padding()
                            , alignment: .topLeading
                        )
                        .overlay(
                            Text("- Passionate about teaching.\n- Specialized credentials in subjects they teach. \n- Frequent performance reviews to maintain highest quality instruction")
                                .font(.title2)
                                .padding(.top, 40)
                                .padding()
                        )
                    
                }
                .padding(.top, 170)
                .padding()
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
                        Text("About \nus")
                            .foregroundColor(Color("AccentColor"))
                            .font(.system(size: 25, weight:.bold, design: .serif))
                            .multilineTextAlignment(.center)
                            .padding()
                    )
            }
            
        }
    }
    
    
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}




