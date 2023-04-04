//
//  NotificationView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 12/03/2023.
//

import SwiftUI

struct NotificationListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            List(mockNotifications) { notification in
                NotificationCardView(notification: notification)
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .padding(.horizontal, -20)

            Spacer()
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationListView()
    }
}
