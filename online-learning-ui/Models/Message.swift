//
//  Message.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 08/03/2023.
//

import Foundation

struct Message: Identifiable {
    let id = UUID()
    let author: String
    let text: String
    let timePosted: String
    var imageUrl: String? = nil
}
