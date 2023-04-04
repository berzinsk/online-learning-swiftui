//
//  CourseCategories.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 02/03/2023.
//

import SwiftUI

struct CourseCategories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                CourseCategory(title: "Language",
                               imageName: "illustration_language",
                               backgroundColor: Color(0xCEECFE),
                               titleBackgroundColor: Color(0xF3FBFF),
                               titleForegroundColor: Color(0x3D5CFF)
                )
                CourseCategory(title: "Painting",
                               imageName: "illustration_painting",
                               backgroundColor: Color(0xEFE0FF),
                               titleBackgroundColor: Color(0xF8F2FF),
                               titleForegroundColor: Color(0x9065BE)
                )
            }
            .padding(.top, 32)
        }
    }
}

struct CourseCategories_Previews: PreviewProvider {
    static var previews: some View {
        CourseCategories()
    }
}
