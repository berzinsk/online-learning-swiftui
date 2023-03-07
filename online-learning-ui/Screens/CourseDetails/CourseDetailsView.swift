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
        }
    }
}

struct CourseDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailsView(course: mockCourse)
    }
}
