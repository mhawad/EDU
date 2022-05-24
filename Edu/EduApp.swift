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
 //   @ObservedObject var viewModel = TeachersViewModel(teacher: teacher)

 

    
    
    var body: some Scene {
 
        
        WindowGroup {
            NavigationView {
                
               // WelcomeView()
             //   GridView()
              //  AcademicsView()
                HomeView()
                //  AboutView()
               //  MainTabView()
               // ParentsView()
               //  ContactView()
                //AdmissionView()
              //  SupportView()
               // MapTest()
               // TuitionView()
               // FooterView()
              //TeachersView()
               // TransportationView()
            }
           .environmentObject(vm)
        }
    }
}
