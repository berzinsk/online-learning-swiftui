//
//  LearningPlan.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 28/02/2023.
//

import SwiftUI

struct LearningPlan: View {
    var body: some View {
        VStack {
            HStack {
                Text("Learning Plan")
                    .font(.custom("Poppins-Medium", size: 18))
                    .foregroundColor(Color(0x1F1F39))
                Spacer()
            }

            VStack {
                LearningProgressView(courseName: "Packaging Design", completed: 40, total: 48)
                LearningProgressView(courseName: "Product Design", completed: 6, total: 24)
            }
            .padding(EdgeInsets(top: 24, leading: 16, bottom: 48, trailing: 16))
            .background(.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 16, x: 0, y: 20)
        }
    }
}

struct LearningPlan_Previews: PreviewProvider {
    static var previews: some View {
        LearningPlan()
    }
}
