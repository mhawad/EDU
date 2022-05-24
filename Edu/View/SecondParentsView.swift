////
////  SecondParentsView.swift
////  Edu
////
////  Created by Mirna Helmy on 5/24/22.
////
//
//import SwiftUI
//
//struct SecondParentsView: View {
//    let parentsMenuCategory: ParentsMenuCategory
//
//    var body: some View {
//        List(parentsMenuCategory.parentsMenuList, id: \.id){ parentsMenuItem in
//            NavigationLink(
//                destination: ThirdParentsView(parentsMenuItem: parentsMenuItem),
//                label: {
//
//                        Text(parentsMenuItem.name.capitalized)
//                })
//        }
//    }
//}
//
//struct SecondParentsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondParentsView(parentsMenuCategory: ParentsMenuCategory.allCategories[0])
//    }
//}
