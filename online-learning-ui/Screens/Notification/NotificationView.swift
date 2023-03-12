//
//  NotificationView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 12/03/2023.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Notifications")
                    .font(.custom("Poppins-Bold", size: 24))
                    .foregroundColor(Color(0x1F1F39))
                Spacer()
            }

            List(mockNotifications) { notification in
                NotificationCardView(notification: notification)
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .padding(.horizontal, -20)

            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
