//
//  StartLearningView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 28/02/2023.
//

import SwiftUI

struct StartLearningView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("What do you want to learn today?")
                    .font(.custom("Poppins-Bold", size: 16))
                    .foregroundColor(Color(0x1F1F39))
                    .frame(maxWidth: 120)
                Button {
                    // CTA
                } label: {
                    Text("Get Started")
                        .font(.custom("Poppins-Bold", size: 12))
                        .foregroundColor(.white)
                }
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                .background(Color(0xFF6905))
                .clipShape(Rectangle())
                .cornerRadius(8)
            }
            .padding(.leading, 24)

            Spacer()

            Image("illustration_get_started")
                .resizable()
                .frame(width: 118, height: 136)
        }
        .background(Color(0xCEECFE))
        .cornerRadius(16)
    }
}

struct StartLearningView_Previews: PreviewProvider {
    static var previews: some View {
        StartLearningView()
    }
}
