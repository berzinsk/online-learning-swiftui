//
//  MeetupView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 01/03/2023.
//

import SwiftUI

struct MeetupView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Meetup")
                    .font(.custom("Poppins-Medium", size: 24))
                    .padding(.bottom, 8)
                    .foregroundColor(Color(0x440687))
                Text("Off-line exchange of learning experiences")
                    .font(.custom("Poppins-Regular", size: 12))
                    .foregroundColor(Color(0x440687))
            }
            .padding(.top, 24)
            .padding(.trailing, 24)

            Spacer()

            VStack {
                ZStack {
                    Circle()
                        .fill(Color(0xF5ECFF))
                        .frame(width: 96, height: 96)
                    Circle()
                        .fill(Color(0xF8F2FF))
                        .frame(width: 71, height: 71)
                    Image("illustration_meetup")
                        .resizable()
                        .frame(width: 78, height: 69)
                }
            }
        }
        .padding(EdgeInsets(top: 8, leading: 16, bottom: 24, trailing: 16))
        .background(Color(0xEFE0FF))
        .cornerRadius(16)
    }
}

struct MeetupView_Previews: PreviewProvider {
    static var previews: some View {
        MeetupView()
    }
}
