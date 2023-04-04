//
//  NotificationTypeView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 12/03/2023.
//

import SwiftUI

struct NotificationTypeView: View {
    let type: NotificationType

    var body: some View {
        Rectangle()
            .fill(backgroundColor())
            .frame(width: 48, height: 48)
            .cornerRadius(16)
            .overlay {
                Image(imageName())
            }
    }

    private func backgroundColor() -> Color {
        switch type {
        case .purchase:
            return Color(0xFFEBF0)
        case .message:
            return Color(0xEAEAFF)
        }
    }

    private func imageName() -> String {
        switch type {
        case .purchase:
            return "icon_notification_card"
        case .message:
            return "icon_notification_message"
        }
    }
}

struct NotificationTypeView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationTypeView(type: .purchase)
    }
}
