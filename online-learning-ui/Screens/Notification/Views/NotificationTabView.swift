//
//  NotificationTabView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 13/03/2023.
//

import SwiftUI

struct NotificationTabView: View {
    let title: String
    var isActive = false
    var onTap: (() -> Void)?

    var body: some View {
        VStack {
            Text(title)
                .font(.custom("Poppins-Medium", size: 16))
                .foregroundColor(Color(0x1F1F39))

                Rectangle()
                .fill(isActive ? Color(0x3D5CFF) : Color.clear)
                    .frame(width: 42, height: 2)
        }
        .onTapGesture {
            onTap?()
        }
    }
}

struct NotificationTabView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationTabView(title: "message", isActive: true)
    }
}
