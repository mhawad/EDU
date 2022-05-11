//
//  PostData.swift
//  Edu
//
//  Created by Mirna Helmy on 5/11/22.
//

import Foundation
import SwiftUI

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
