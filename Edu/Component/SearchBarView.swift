//
//  SearchBarView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/10/22.
//

import SwiftUI

struct SearchBarView: View {
    @EnvironmentObject private var vm: HomeViewModel
    @Binding var searchText: String
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(.black)
               
            
            TextField("Search...", text: $searchText)
                .foregroundColor(.black)
                .overlay(
                Image(systemName: "xmark.circle.fill")
                    .padding()
                    .offset(x: 10)
                    .foregroundColor(.black)
                    .opacity(searchText.isEmpty ? 0.0 : 1.0)
                    .onTapGesture {
                        searchText = ""
                    }
                ,alignment: .trailing
                )
        }
                .font(.headline)
                .padding()
                .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("Yellow").opacity(0.3))
                    .shadow(
                        color: Color("Gray").opacity(0.15),
                    radius: 10, x: 0, y: 0)
                )
        .padding()
    }
}

//struct SearchBarView_Previews: PreviewProvider {
//    
//    @EnvironmentObject private var vm: HomeViewModel
//    static var previews: some View {
//        SearchBarView(searchText: $vm.searchText)
//    }
//}
//
