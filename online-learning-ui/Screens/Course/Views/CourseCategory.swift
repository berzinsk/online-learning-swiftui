//
//  CourseCategory.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 02/03/2023.
//

import SwiftUI

struct CourseCategory: View {
    let title: String
    let imageName: String
    let backgroundColor: Color
    let titleBackgroundColor: Color
    let titleForegroundColor: Color

    var body: some View {
        ZStack {
            Rectangle()
                .fill(backgroundColor)
                .frame(width: 160, height: 80, alignment: .bottom)
                .cornerRadius(16)

            ZStack() {
                Image(imageName)
                    .offset(CGSize(width: -24, height: 0))
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Text(title)
                            .font(.custom("Poppins-Medium", size: 14))
                            .foregroundColor(titleForegroundColor)
                            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 4))
                            .background(
                                RoundedCornersShape(corners: [.bottomLeft, .topLeft], radius: 16)
                                    .fill(titleBackgroundColor)
                            )
                            .padding(.bottom, 14)
                    }
                }
            }
            .frame(width: 160, height: 80, alignment: .bottom)
        }
        .padding(.trailing)
    }
}

struct CourseCategory_Previews: PreviewProvider {
    static var previews: some View {
        CourseCategory(title: "Language",
                       imageName: "illustration_language",
                       backgroundColor: Color(0xCEECFE),
                       titleBackgroundColor: Color(0xF3FBFF),
                       titleForegroundColor: Color(0x3D5CFF)
        )
    }
}
