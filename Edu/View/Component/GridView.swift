//
//  GridView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/10/22.
//

import SwiftUI

struct GridView: View {
    
    let sections = ["Tuition", "Calendar", "FAQ", "Events", "Teachers", "Gallery"]
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        NavigationView {
            LazyVGrid(columns: columns) {
              
                ForEach(sections, id: \.self) { section in
                    Text(section)
                        .padding()
                        .frame(width: 200, height: 55)
                        .background(Color("Red").opacity(0.5))
                        .cornerRadius(20)
                    
                    
                }
            }
        }
        //        LazyVGrid(columns: columns) {
        //            ForEach(sections, id: \.self) { index in
        //
        //                Rectangle()
        //                    .frame(width: 150, height: 100)
        //                    .cornerRadius(25)
        //                    .padding()
        ////                    .overlay(
        ////                        NavigationLink {
        ////                            ParentsView()
        ////                        } label: {
        ////                            Text("Parents")
        ////                                .font(.headline)
        ////                                .foregroundColor(.yellow)
        ////                        }
        ////
        ////                    )
        //
        //            }
        //        }
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












struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
