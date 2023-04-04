//
//  Mocks.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 07/03/2023.
//

import Foundation

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

let mockMessages = [
    Message(author: "Bert Pullman", text: "Congratulations on completing the first lesson, keep up the good work!", timePosted: "16:32"),
    Message(author: "Daniel Lawson", text: "Your course has been updated, you can check the new course in your study course.", timePosted: "16:32", imageUrl: ""),
    Message(author: "Nguyen Shane", text: "Congratulations, you have completed your registration! Let's start your learning journey next.", timePosted: "12:00"),
]

let mockNotifications = [
    Notification(type: .purchase, text: "Successful purchase!"),
    Notification(type: .message, text: "Congratulations on completing the course. Don't stop now and look for other courses."),
    Notification(type: .message, text: "Your course has been updated, you can view the changes on the course page."),
    Notification(type: .message, text: "Congratulations, you have completed your firs course.")
]
