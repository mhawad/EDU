//
//  EduApp.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI

@main
struct EduApp: App {
    
    @StateObject var vm = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                
              //  WelcomeView()
                // HomeView()
                //  AboutView()
               //  MainTabView()
               // ParentsView()
                 ContactView()
                //AdmissionView()
              //  SupportView()
               // MapTest()
            }
           .environmentObject(vm)
        }
    }
}
