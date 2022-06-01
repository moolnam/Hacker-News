//
//  PostData.swift
//  Hacker-News
//
//  Created by KimJongHee on 2022/05/31.
//

import Foundation
import SwiftUI



struct Result: Decodable {
    let hits: [Post]
}


struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
