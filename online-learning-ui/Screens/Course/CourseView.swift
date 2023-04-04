//
//  CourseView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 01/03/2023.
//

import SwiftUI

struct CourseView: View {
    var body: some View {
        NavigationStack {
            VStack {
                CourseHeader()
                SearchField()
                CourseCategories()
                ChooseCourseView()
            }
            .padding(.horizontal, 20)
        }
        .tint(.black)
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView()
    }
}
