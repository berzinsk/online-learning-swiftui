//
//  NotificationCardView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 12/03/2023.
//

import SwiftUI

struct NotificationCardView: View {
    let notification: Notification
    
    var body: some View {
        HStack(spacing: 16) {
            NotificationTypeView(type: notification.type)

            VStack(alignment: .leading, spacing: 8) {
                Text(notification.text)
                    .font(.custom("Poppins-Regular", size: 12))
                    .foregroundColor(Color(0x1F1F39))
                    .lineLimit(1)
                    .truncationMode(.tail)

                HStack(spacing: 4) {
                    Image("icon_time")
                    Text("Just now")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color(0xB8B8D2))
                }
            }

            Spacer()
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 4)
    }
}

struct NotificationCardView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCardView(notification: mockNotifications[1])
    }
}
