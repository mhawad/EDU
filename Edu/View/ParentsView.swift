//
//  ParentsView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI

struct ParentsView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {

        NavigationView {
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                }
                .navigationBarTitle("H4XOR News")
            }
            .onAppear {
                self.networkManager.fetchData()
            }
        }
        
    }
    
    struct ParentsView_Previews: PreviewProvider {
        static var previews: some View {
            ParentsView()
        }
    }
}
