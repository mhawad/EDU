//
//  MainTabView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(named: "Secondary")

    }
    
    var body: some View {
            TabView(selection: $selectedIndex) {
                
                HomeView()
                    .onTapGesture {
                        self.selectedIndex = 0
                    }
                    .tabItem {
                        HStack {
                        Image(systemName: "house.circle")
                            Text("Home")
                        }
                    } .tag(0)
                
                ParentsView()
                    .onTapGesture {
                        self.selectedIndex = 1
                    }
                    .tabItem {
                        HStack {
                        Image(systemName: "person.crop.circle.fill")
                            Text("Parents")
                        }
                    } .tag(1)
                
                
                
//
//                AdmissionView()
//                    .onTapGesture {
//                        self.selectedIndex = 2
//                    }
//                    .tabItem {
//                        HStack {
//                            Image(systemName: "newspaper.circle.fill")
//                             Text("Admission")
//                        }
//                    } .tag(2)
//
                
                
                SupportView()
                    .onTapGesture {
                        self.selectedIndex = 3
                    }
                    .tabItem {
                        HStack {
                        Image(systemName: "hourglass.circle.fill")
                            Text("Support us")
                        }
                    } .tag(2)
                
                
                ContactView()
                    .onTapGesture {
                        self.selectedIndex = 4
                    }
                    .tabItem {
                        HStack {
                        Image(systemName: "phone.circle.fill")
                        Text("Contact us")
                        }
                    } .tag(3)
                 
            }
        
        }
    }

    struct MainTabView_Previews: PreviewProvider {
        static var previews: some View {
            MainTabView()
        }
    }
