//
//  GridView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/10/22.
//

import SwiftUI

struct GridView: View {
    
    
 //   let allGridMenuCategories = GridMenuCategory.allGridCategories
    
    
 //   @ObservedObject var vm: TeachersViewModel

    var body: some View {

        
        
//        NavigationView{
//        List(allGridMenuCategories, id: \.id){ gridMenuCategory in
//                NavigationLink("Calendar", destination: CalendarView())
//                    .padding()
//                NavigationLink("Tuition", destination: TuitionView())
//                    .padding()
//                NavigationLink("Admission", destination: AdmissionView())
//                    .padding()
//
//        }
//        .navigationBarTitleDisplayMode(.inline)
//        }
//        .navigationViewStyle(StackNavigationViewStyle())
//
//
        

            HStack {
                List {
                    NavigationLink("Calendar", destination:
                                    CalendarView()
                    )
                    NavigationLink("Teachers", destination:
                                    TeachersView()
                    )
                    NavigationLink("Admission", destination:
                                    AdmissionView()
                    )
                }

                List {
                    NavigationLink("Tuition", destination:
                                    TuitionView()
                    )
                    NavigationLink("Academics", destination:
                                    AcademicsView()
                    )
                    NavigationLink("Transportation", destination:
                                    TransportationView()
                    )
                }


            }

    }
}

//struct GridMenuItem {
//    var id : UUID
//    var name : String
//    
//    
//    init(name: String ) {
//        self.id = UUID()
//        self.name = name
//        
//    }
//}



//struct GridMenuCategory: Identifiable {
//    var id: UUID
//    var name: String
//    var gridMenuList: [GridMenuItem]
//    
//    init(name: String, gridMenuList: [GridMenuItem] ) {
//        self.id = UUID()
//        self.name = name
//        self.gridMenuList = gridMenuList
//    }
//    
//    
//    
//    static let allGridCategories = [
//    
//        GridMenuCategory(name: "Transportation",
//                         gridMenuList: [GridMenuItem(name: "1st grade"),
//                                        GridMenuItem(name: "2nd grade"),
//                                        GridMenuItem(name: "3rd grade"),
//                          ])
//    
//    
//    ]
//}


//struct GridView_Previews: PreviewProvider {
//    static var previews: some View {
//        GridView()
//    }
//}
