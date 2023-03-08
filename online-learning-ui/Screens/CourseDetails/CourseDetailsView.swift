//
//  CourseDetailsView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 07/03/2023.
//

import SwiftUI

struct CourseDetailsView: View {
    let course: Course

    var body: some View {
        ZStack {
            Color(0xFFE7EE).ignoresSafeArea()
            VStack {
                CourseDetailsHeaderView(course: course)
                Spacer()
            }
            .padding(.horizontal, 16)

            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    CourseDetailsDescriptionSection(course: course)
                    ForEach(1...24, id: \.self) { index in
                        let isPlayed = index == 1
                        let isLocked = index > 2
                        LectureItemView(number: index, title: "Welcome to the Course", length: "6:10", isPlayed: isPlayed, isLocked: isLocked)
                    }
                }
                .padding(EdgeInsets(top: 32, leading: 16, bottom: 32, trailing: 16))
                .background(RoundedCornersShape(corners: [.topLeft, .topRight], radius: 16).fill(.white))
                .padding(.top, 208)
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct CourseDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailsView(course: mockCourses[0])
    }
}
