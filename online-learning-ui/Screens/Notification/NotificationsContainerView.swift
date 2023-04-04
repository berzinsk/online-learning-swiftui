//
//  NotificationsContainerView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 13/03/2023.
//

import SwiftUI

struct NotificationsContainerView: View {
    @State private var activeTab = 0

    var body: some View {
        VStack() {
            HStack {
                Text("Notifications")
                    .font(.custom("Poppins-Bold", size: 24))
                    .foregroundColor(Color(0x1F1F39))
                Spacer()
            }
            .padding(.bottom, 16)

            HStack(spacing: 64) {
                NotificationTabView(title: "message", isActive: activeTab == 0) {
                    activeTab = 0
                }
                NotificationTabView(title: "notification", isActive: activeTab == 1) {
                    activeTab = 1
                }
            }
            .padding(.bottom, 16)

            if activeTab == 0 {
                NotificationListView()
            } else {
                MessageListView()
            }
        }
        .padding(.horizontal, 16)
    }
}

struct NotificationsContainerView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsContainerView()
    }
}
