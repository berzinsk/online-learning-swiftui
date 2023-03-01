//
//  LearningProgressView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 28/02/2023.
//

import SwiftUI

struct LearningProgressView: View {
    let courseName: String
    let completed: Int
    let total: Int

    var body: some View {
        HStack {
            Circle()
                .stroke(Color(0xF4F3FD), lineWidth: 3)
                .frame(width: 18, height: 18)
                .overlay {
                    Circle()
                        .trim(from: 0, to: 0.8)
                        .rotation(Angle(degrees: -90))
                        .stroke(Color(0x707070), lineWidth: 3)
                }
            Text(courseName)
            Spacer()
            Text("\(completed)")
            Text("/ \(total)")
        }
    }
}

struct LearningProgressView_Previews: PreviewProvider {
    static var previews: some View {
        LearningProgressView(courseName: "Learning Plan", completed: 40, total: 48)
    }
}
