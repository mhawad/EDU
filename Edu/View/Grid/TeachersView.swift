//
//  TeachersView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/11/22.
//

import SwiftUI

struct TeachersView: View {
    
 //   @ObservedObject var vm: TeachersViewModel
    
    
    var body: some View {

        ZStack (alignment: .top){
            Color("Gray")
                .ignoresSafeArea()
            
            ScrollView {
                LazyVStack(alignment: .trailing, spacing: 20){
                    ForEach(0 ... 5, id: \.self) { teacher in
                       // NavigationLink {
                            TeacherRow()
//                        } label: {
//                            TeacherRow(teacher: teacher)
//                        }
                  }
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
                        Text("Meet \nour \nTeachers")
                            .foregroundColor(Color("AccentColor"))
                            .font(.system(size: 25, weight:.bold, design: .serif))
                            .multilineTextAlignment(.center)
                            .padding()
                    )
                
                
            }
            
        }
    }
}


//struct TeachersView_Previews: PreviewProvider {
//    static var previews: some View {
//        TeachersView()
//    }
//}
