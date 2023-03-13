//
//  MessageView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 07/03/2023.
//

import SwiftUI

struct MessageListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            List(mockMessages) { message in
                MessageItemView(message: message)
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .padding(.horizontal, -20)

            Spacer()
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView()
    }
}
