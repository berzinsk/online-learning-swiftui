//
//  Mocks.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 07/03/2023.
//

import Foundation

let mockCourse = Course(name:
                            "Product Design v1.0",
                         author: "Robertson Connine",
                         price: 190,
                         lenght: 16,
                         enrolled: 800,
                         dateCreated: Date.now.addingTimeInterval(-(86400 * 89))
                        )

let mockCourses: [Course] = [
    Course(name: "Product Design v1.0",
           author: "Robertson Connine",
           price: 190,
           lenght: 16,
           enrolled: 800,
           dateCreated: Date.now.addingTimeInterval(-(86400 * 89))
          ),
    Course(name: "Flutter Development",
           author: "Karlis Berzins",
           price: 210,
           lenght: 18,
           enrolled: 1200,
           dateCreated: Date.now.addingTimeInterval(-(86400 * 93))
          ),
    Course(name: "SwiftUI Development",
           author: "Karlis Berzins",
           price: 210,
           lenght: 14,
           enrolled: 1300,
           dateCreated: Date.now.addingTimeInterval(-(86400 * 101))
          ),
    Course(name: "Visual Design",
           author: "Bert Pullman",
           price: 230,
           lenght: 12,
           enrolled: 500,
           dateCreated: Date.now.addingTimeInterval(-(86400 * 35))
          )
]
