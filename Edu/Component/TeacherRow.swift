//
//  TeacherRow.swift
//  Edu
//
//  Created by Mirna Helmy on 5/23/22.
//

import SwiftUI

struct TeacherRow: View {
    
   // @State var teacherName = "Anita"
  //  @State var teacherProfile: Image
  //  let teacher: Teacher
    
    
    var body: some View {
      
        
        VStack {
            HStack {
               
                Image("Anita")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    
                Spacer()
                VStack {
                    Text("Alice Mark")
                        .font(.system(size: 25, weight: .bold))
                    Text("Kindergarten")
                        .font(.caption)
                }
              
                Spacer()
                
            }
            .padding()
     
            
            Text("Anita Sintes' K-2 classroom is full of the life and vitality one would expect from a room filled with kindergarten students. A veteran of the Boston Public Schools, Anita's work at the Hernandez Elementary School is an enduring testament of her love for learning and her commitment to the children of Boston.")
                .padding()
                 
            HStack {
                Image("Anita1")
                    .resizable()
                    .scaledToFit()
                  Spacer()
                Image("Anita2")
                    .resizable()
                    .scaledToFit()
            }
            .padding()
                 
                 Text("As a latina educator (Anita's family immigrated from El Salvador) Anita reflects the ethnic diversity found in her young students and the more than 40,000 students of color across the Boston Public Schools. As Boston's demographics continue to shift, the Boston Public Schools is committed to employing a workforce that is reflective of our city's children.")
                .padding()
        }
        .background(Color("Red").opacity(0.1))
        .cornerRadius(10)
        .padding()
        
    }
       
}

//struct TeacherRow_Previews: PreviewProvider {
//    static var previews: some View {
//        TeacherRow()
//    }
//}
