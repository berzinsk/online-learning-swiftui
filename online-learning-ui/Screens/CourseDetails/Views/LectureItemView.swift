//
//  LectureItemView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 07/03/2023.
//

import SwiftUI

struct LectureItemView: View {
    let number: Int
    let title: String
    let length: String
    let isPlayed: Bool
    var isLocked: Bool = false

    var body: some View {
        HStack(alignment: .top) {
            Text(number < 10 ? "0\(number)" : "\(number)")
                .font(.custom("Poppins-Medium", size: 24))
                .foregroundColor(Color(0xB8B8D2))
                .padding(.trailing, 16)
            VStack(alignment: .leading, spacing: 4) {
                Text("Welcome to the Course")
                    .font(.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color(0x1F1F39))
                HStack {
                    Text("6:10 min")
                        .font(.custom("Poppins-Medium", size: 12))
                        .foregroundColor(isPlayed ? Color(0x3D5CFF) : Color(0xB8B8D2))
                    if isPlayed {
                        Image("icon_done")
                    }
                }
            }
            Spacer()
            Circle()
                .fill(Color(0x3D5CFF).opacity(isLocked ? 0.3 : 1.0))
                .frame(width: 44, height: 44)
                .overlay {
                    Image(isLocked ? "icon_lock" : "icon_play")
                }
        }
        .padding(.vertical, 8)
    }
}

struct LectureItemView_Previews: PreviewProvider {
    static var previews: some View {
        LectureItemView(number: 1, title: "Welcome to the Course", length: "6:10", isPlayed: true, isLocked: false)
    }
}
