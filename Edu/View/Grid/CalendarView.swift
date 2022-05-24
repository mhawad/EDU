//
//  CalendarView.swift
//  Edu
//
//  Created by Mirna Helmy on 5/11/22.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        Link("2022-2023 Suggested Academic Calendar", destination: URL(string: "https://www.holyyouthchristianacademy.org/_files/ugd/39377a_f24103916fc74d758fd78f08d4ce318f.pdf")!)

    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
