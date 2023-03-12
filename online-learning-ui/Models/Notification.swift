//
//  Notification.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 12/03/2023.
//

import Foundation

enum NotificationType {
    case purchase, message
}

struct Notification: Identifiable {
    let id = UUID()
    let type: NotificationType
    let text: String
}
