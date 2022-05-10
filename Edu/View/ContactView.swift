//
//  ContactView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/9/22.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        ZStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            WaterShape()
            MainTabView()
        }
       
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
