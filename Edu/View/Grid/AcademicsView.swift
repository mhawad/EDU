//
//  AcademicsView.swift
//  Edu
//
//  Created by Mirna Sokar on 5/19/22.
//
import SwiftUI

struct AcademicsView: View {
    
    @State var curriculum = ["Pre-K","1st Grade","2nd Grade","3rd Grade","4th Grade","5th Grade","6th Grade","7th Grade"]
    
    var body: some View {
        ZStack (alignment: .top){
            Color("Gray")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(){
                    
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
                        .padding()
                    
                    Divider()
                    
                    Image("academic1")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 230)
                    
                  
                    
                    Text("TWO OF OUR SCHOOLS NAMED AMONG BEST IN THE NATION")
                        .font(.system(size: 23, weight: .bold))
             
                    Text("It’s official… We’ve got two of the best schools in the country!\nDavis Drive Elementary and Morrisville Elementary are among just eight schools in North Carolina and a total of 279 public and 50 private schools across the country to be recognized as 2016 National Blue Ribbon Schools. U.S. Secretary of Education, John B. King, Jr. made the announcement Wednesday afternoon.\nThe National Blue Ribbon Schools Program honors public and private elementary, middle, and high schools where students either achieve very high learning standards or are making notable improvements in closing the achievement gap. The award affirms the hard work of students, educators, families and communities in creating safe and welcoming schools where students master challenging content.")
                        .padding()
                    
                    Divider()
                    
                    
                    Image("academic2")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 230)
                     
                    
                    
                    Text("MOUNT VERNON LIBRARIAN RECEIVES NATIONAL AWARD")
                        .padding()
                        .font(.system(size: 23, weight: .bold))
                    Text("Congratulations to Mount Vernon Middle School librarian Julie Stivers, who has been named the recipient of the 2017 American Association of School Librarians’ (AASL) Frances Henne Award.\nThis national honor recognizes a school librarian with five years or less experience and who demonstrates leadership qualities with students, teachers and administrators. The award includes a stipend that will sponsor Stivers’s attendance at the organization’s national conference.\n“In the school environment, I want my library to be an empowering space for students to learn, engage, read, create, write, and simply, be,” wrote Stivers in her application. “I’m only midway through my second year as a school librarian, but I’m energized by what I’ve been able to accomplish so far. I believe inclusive libraries are created by using culturally relevant pedagogy, removing barriers, using a diverse collection and expanding the definition of the library as a safe space.”")
                        .padding()
                    
            
                    FooterView()
                }
                .padding(.top, 170)
                .padding(.vertical)
                
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

struct AcademicsView_Previews: PreviewProvider {
    static var previews: some View {
        AcademicsView()
    }
}
