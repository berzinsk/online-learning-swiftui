//
//  CourseDetailsHeaderView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 07/03/2023.
//

import SwiftUI

struct CourseDetailsHeaderView: View {
    let course: Course

    var body: some View {
        ZStack(alignment: .top) {
            HStack {
                VStack(alignment: .leading) {
                    Image("bestseller_tag_background")
                        .overlay {
                            Text("BESTSELLER")
                                .font(.custom("Poppins-Regular", size: 12))
                                .foregroundColor(Color(0x1F1F39))
                        }
                    Text(course.name)
                        .font(.custom("Poppins-Bold", size: 20))
                        .foregroundColor(Color(0x1F1F39))
                        .frame(minWidth: 150, idealWidth: 150, maxWidth: 200, minHeight: 44, idealHeight: 44, maxHeight: 88, alignment: .topLeading)
                }
                .padding(.top, 32)
                Spacer()
            }
            HStack {
                Spacer()
                Image("course_details_placeholder")
            }
        }
    }
}

struct CourseDetailsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailsHeaderView(course: mockCourses[0])
    }
}
