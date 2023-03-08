//
//  MessageView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 07/03/2023.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Notifications")
                    .font(.custom("Poppins-Bold", size: 24))
                    .foregroundColor(Color(0x1F1F39))
                Spacer()
            }

            List(mockMessages) { message in
                MessageItemView(message: message)
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .padding(.horizontal, -20)

            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
