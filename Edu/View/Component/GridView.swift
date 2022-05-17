//
//  GridView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/10/22.
//

import SwiftUI

struct GridView: View {
    
    
//    var items : [String: [AnyObject]] = ["groups": [
//        NavigationLink{ CalendarView() } label: { Item(title: "Calendar", image: Image(systemName: "dollarsign.square"), imgColor: .orange) },
//        NavigationLink{ TuitionView() }  label: { Item(title: "Tuition", image: Image(systemName: "dollarsign.square"), imgColor: .black) },
//        NavigationLink{ TeachersView() } label: { Item(title: "Teachers", image: Image(systemName: "person.3"), imgColor: .purple) },
//        NavigationLink{ EventsView() }   label: { Item(title: "Events", image: Image(systemName: "calendar.badge.clock"), imgColor: .blue) },
//        NavigationLink{ GalleryView() }  label: { Item(title: "Gallery", image: Image(systemName: "video"), imgColor: .red) },
//        NavigationLink{ FAQView() }      label: { Item(title: "FAQ", image: Image(systemName: "questionmark.square"), imgColor: .green) },
//        ] as [AnyObject]]
//    //as [Any]
    
    
    let sections = ["Tuition", "Calendar", "FAQ", "Events", "Teachers", "Gallery"]
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        
//        NavigationView {
//        LazyVGrid(columns: columns) {
            
//            ForEach(items["groups"]! as! [String], id: \.self)  { group in
//               Text(group)
//               //ItemView(item: item)
//                //                    Text(section)
////                    .padding()
////                    .frame(width: 200, height: 100)
////                    .background(Color("Red").opacity(0.5))
////                    .cornerRadius(20)
//
//
//            }
//        }
//        }
        
                LazyVGrid(columns: columns) {
                    ForEach(sections, id: \.self) { index in
        
                        Rectangle()
                            .frame(width: 150, height: 100)
                            .cornerRadius(25)
                            .padding()
        //                    .overlay(
        //                        NavigationLink {
        //                            ParentsView()
        //                        } label: {
        //                            Text("Parents")
        //                                .font(.headline)
        //                                .foregroundColor(.yellow)
        //                        }
        //
        //                    )
        
                    }
                }
    }
}


//NavigationView {
//    List(networkManager.posts){ post in
//        NavigationLink(destination: DetailView(url: post.url)) {
//            HStack {
//                Text(String(post.points))
//                Text(post.title)
//            }
//
//        }
//        .navigationBarTitle("H4XOR News")
//    }
//    .onAppear {
//        self.networkManager.fetchData()
//    }
//}



struct Item: Identifiable {

        let id = UUID()
        let title: String
        let image: Image
        let imgColor: Color

}




struct ItemView: View {
    let item: Item

    var body: some View {
        GeometryReader { reader in
            VStack(spacing: 5) {
                Image("\(item.image)")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(item.imgColor)
                    .frame(width: 50)

                Text(item.title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.9))


            }

            .frame(width: reader.size.width, height: reader.size.height)

            // .background(Color("AccentColor"))



        }
        .frame(height: 150)
        .shadow(color: .black.opacity(0.2), radius: 10, y: 5)
    }
}





struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
