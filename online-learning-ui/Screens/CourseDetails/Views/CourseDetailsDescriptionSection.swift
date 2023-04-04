//
//  CourseDetailsDescriptionSection.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 07/03/2023.
//

import SwiftUI

struct CourseDetailsDescriptionSection: View {
    let course: Course

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(course.name)
                    .font(.custom("Poppins-Bold", size: 20))
                    .foregroundColor(Color(0x1F1F39))
                Spacer()
                Text("\(course.price.formatted(.number.precision(.fractionLength(0))))€")
                    .font(.custom("Poppins-Bold", size: 20))
                    .foregroundColor(Color(0x3D5CFF))
            }
            .padding(.bottom, 1)

            Text("6h 14min · 24 Lessons")
                .font(.custom("Poppins-Regular", size: 12))
                .foregroundColor(Color(0x858597))
                .padding(.bottom, 8)

            Text("About this course")
                .font(.custom("Poppins-Bold", size: 16))
                .foregroundColor(Color(0x1F1F39))

            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.")
                .font(.custom("Poppins-Regular", size: 12))
                .foregroundColor(Color(0x9393A3))
        }
    }
}

struct CourseDetailsDescriptionSection_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailsDescriptionSection(course: mockCourses[0])
    }
}
