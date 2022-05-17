//
//  MainTabView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            
            HomeView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house.circle")
                } .tag(0)
            
            ParentsView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                } .tag(1)
            
            
            
            
            AdmissionView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "newspaper.circle.fill")
                } .tag(2)
            
            
            
            SupportView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "hourglass.circle.fill")
                } .tag(3)
            
            ContactView()
                .onTapGesture {
                    self.selectedIndex = 4
                }
                .tabItem {
                    Image(systemName: "phone.circle.fill")
                } .tag(4)
            
            
            
            
            
        }
    
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
