//
//  TuitionTableView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/18/22.
//

import SwiftUI

struct TuitionTableView: View {
    var body: some View {
        List {
            Section(
                header: Text("Tuition and Fees")
                    
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.black)
            ) {
                HStack {
                    Text("Grade")
                        .font(.system(size: 13, weight: .bold))

                    Spacer()
                    Text("Annual \nTuition")
                        .font(.system(size: 13, weight: .bold))
                    Spacer()
                    Text("Student \nActivity \nFee")
                        .font(.system(size: 10, weight: .bold))

                    
                }
                .padding()
                .background(.blue.opacity(0.7))
                .cornerRadius(5)

                
            HStack {
                Text("Kindergarten")
                Spacer()
                Text("$11,639")
                Spacer()
                Text("$130")
            }
            .padding()
            .background(.gray.opacity(0.3))
            .cornerRadius(5)
            
            HStack {
                Text("Grades 1 - 2")
                Spacer()
                Text("$14,989")
                Spacer()
                Text("$180")
            }
            .padding()
           // .background(.gray.opacity(0.3))
            .cornerRadius(5)
            
            HStack {
                Text("Grades 3 - 5")
                Spacer()
                Text("$14,989")
                Spacer()
                Text("$205")
            }
            .padding()
            .background(.gray.opacity(0.3))
            .cornerRadius(5)
            
            
            HStack {
                Text("Grade 6       ")
                Spacer()
                Text("$14,989")
                Spacer()
                Text("$305")
            }
            .padding()
           // .background(.gray.opacity(0.3))
            .cornerRadius(5)
            
            HStack {
                Text("Grade 7 - 8")
                Spacer()
                Text("$15,988")
                Spacer()
                Text("$365")
            }
            .padding()
            .background(.gray.opacity(0.3))
            .cornerRadius(5)
            }
        }
        .listStyle(.plain)
    }
}

struct TuitionTableView_Previews: PreviewProvider {
    static var previews: some View {
        TuitionTableView()
    }
}
