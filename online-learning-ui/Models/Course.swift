//
//  Course.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 03/03/2023.
//

import Foundation

struct Course: Identifiable {
    let id = UUID()
    let name: String
    let author: String
    let price: Double
    let lenght: Int
    let enrolled: Int
    let dateCreated: Date
}
