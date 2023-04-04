//
//  CourseHeader.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 01/03/2023.
//

import SwiftUI

struct CourseHeader: View {
    var body: some View {
        HStack {
            Text("Course")
                .font(.custom("Poppins-Bold", size: 24))
                .foregroundColor(Color(0x1F1F39))
            Spacer()
            Image("avatar")
        }
    }
}

struct CourseHeader_Previews: PreviewProvider {
    static var previews: some View {
        CourseHeader()
    }
}
