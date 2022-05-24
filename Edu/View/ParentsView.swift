//
//  ParentsView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI




struct ParentsView: View {
    let allParenentsMenuCategories = ParentsMenuCategory.allCategories
    
    var body: some View {
        
        ZStack (alignment: .top){
            Color("Gray")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .center, spacing: 20){
                    
                    //                NavigationView {
                    //                    List(allParenentsMenuCategories, id: \.id){ parentsMenuCategory in
                    //                        NavigationLink(
                    //                            destination: SecondParentsView(parentsMenuCategory: parentsMenuCategory),
                    //                            label: {
                    //                                    Text(parentsMenuCategory.name.capitalized)
                    //                            })
                    //                    }
                    //                    .navigationBarTitleDisplayMode(.inline)
                    //                }
                    //                .navigationViewStyle(StackNavigationViewStyle())
                    
                    
                    
                    NavigationView{
                        List(allParenentsMenuCategories, id: \.id){ parentsMenuCategory in
                            NavigationLink("Calendar", destination: CalendarView())
                                .padding()
                            NavigationLink("Tuition", destination: TuitionView())
                                .padding()
                            NavigationLink("Admission", destination: AdmissionView())
                                .padding()
                            
                        }
                        .navigationBarTitleDisplayMode(.inline)
                    }
                    .frame(width: 450, height:500)
                    .navigationViewStyle(StackNavigationViewStyle())
                    
                    Spacer()
                    FooterView()
                }
                .padding(.top, 120)
                
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
                Text("Parents")
                    .font(.system(size: 45, weight:.bold, design: .serif))
                Image("logo")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .shadow(radius: 5)
            }
            .frame(height: UIScreen.main.bounds.height * 0.1)
            
            
        }
    }
    
    
}







struct ParentsMenuItem {
    var id : UUID
    var name : String
    
    
    init(name: String ) {
        self.id = UUID()
        self.name = name
        
    }
}


struct ParentsMenuCategory: Identifiable {
    var id: UUID
    var name: String
    var parentsMenuList: [ParentsMenuItem]
    
    init(name: String, parentsMenuList: [ParentsMenuItem] ) {
        self.id = UUID()
        self.name = name
        self.parentsMenuList = parentsMenuList
    }
    
    
    static let allCategories = [
        //        ParentsMenuCategory(name: "Calendar",
        //                            parentsMenuList: [ParentsMenuItem(name: "Calendar1"),
        //                                              ParentsMenuItem(name: "Calendar2"),
        //                                              ParentsMenuItem(name: "Calendar3"),
        //                                             ]),
        //       ParentsMenuCategory(name: "Tuition",
        //                        parentsMenuList: [ParentsMenuItem(name: "1st grade"),
        //                                          ParentsMenuItem(name: "2nd grade"),
        //                                          ParentsMenuItem(name: "3rd grade"),
        //                         ]),
        
        ParentsMenuCategory(name: "Transportation",
                            parentsMenuList: [ParentsMenuItem(name: "1st grade"),
                                              ParentsMenuItem(name: "2nd grade"),
                                              ParentsMenuItem(name: "3rd grade"),
                                             ])
        
    ]
    
}




struct ParentsView_Previews: PreviewProvider {
    static var previews: some View {
        ParentsView()
    }
}

