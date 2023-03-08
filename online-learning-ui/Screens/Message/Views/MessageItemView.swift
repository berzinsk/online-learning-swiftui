//
//  MessageItemView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 08/03/2023.
//

import SwiftUI

struct MessageItemView: View {
    let message: Message

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Rectangle()
                    .fill(Color(0xD8FFEF))
                    .frame(width: 48, height: 48)
                    .cornerRadius(8)

                VStack(alignment: .leading) {
                    Text(message.author)
                        .font(.custom("Poppins-Bold", size: 12))
                        .foregroundColor(Color(0x1F1F39))
                    Text("Online")
                        .font(.custom("Poppins-Bold", size: 12))
                        .foregroundColor(Color(0x858597))
                }
                .padding(.leading, 8)

                Spacer()
                Text(message.timePosted)
                    .font(.custom("Poppins-Regular", size: 12))
                    .foregroundColor(Color(0x858597))
            }
            .padding(.bottom, 12)

            Text(message.text)
                .font(.custom("Poppins-Regular", size: 12))
                .foregroundColor(Color(0x858597))

            if let _ = message.imageUrl {
                Rectangle()
                    .foregroundColor(Color(0xFFE7EE))
                    .frame(height: 145)
                    .cornerRadius(16)
            }
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 4)
    }
}

struct MessageItemView_Previews: PreviewProvider {
    static var previews: some View {
        MessageItemView(message: mockMessages[0])
    }
}
