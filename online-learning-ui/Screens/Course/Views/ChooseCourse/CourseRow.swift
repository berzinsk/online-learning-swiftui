//
//  CourseRow.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 03/03/2023.
//

import SwiftUI

struct CourseRow: View {
    let course: Course

    var body: some View {
        HStack {
            Rectangle()
                .fill(Color(0xC4C4C4))
                .cornerRadius(8)
                .frame(width: 68, height: 68)
                .padding(.trailing, 24)
            VStack(alignment: .leading, spacing: 2) {
                Text(course.name)
                    .font(.custom("Poppins-Medium", size: 14))
                    .foregroundColor(Color(0x1F1F39))
                HStack {
                    Image("icon_person")
                        .frame(width: 8, height: 10)
                    Text(course.author)
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color(0xB8B8D2))
                    Spacer()
                }
                HStack {
                    Text("\(course.price.formatted(.number.precision(.fractionLength(0))))€")
                        .font(.custom("Poppins-Bold", size: 16))
                        .foregroundColor(Color(0x3D5CFF))
                    Text("\(course.lenght) hours")
                        .font(.custom("Poppins-Regular", size: 10))
                        .foregroundColor(Color(0xFF6905))
                        .padding(.horizontal, 8)
                        .background(Color(0xFFEBF0))
                        .cornerRadius(8)
                }
            }
        }
        .padding(20)
        .background(.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 4)
    }
}

struct CourseRow_Previews: PreviewProvider {
    static var previews: some View {
        CourseRow(course: Course(name: "Visual Design",
                                 author: "Bert Pullman",
                                 price: 230,
                                 lenght: 12,
                                 enrolled: 500,
                                 dateCreated: Date.now
                                )
        )
    }
}
