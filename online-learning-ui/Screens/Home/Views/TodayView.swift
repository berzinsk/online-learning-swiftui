//
//  TodayView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 28/02/2023.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Learned today")
                    .font(.custom("Poppins-Reguler", size: 12))
                    .foregroundColor(Color(0x858597))
                Spacer()
                Button {
                    // Button action
                } label: {
                    Text("My courses")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color(0x3D5CFF))
                }

            }

            HStack {
                Text("46min")
                    .font(.custom("Poppins-Bold", size: 20))
                    .foregroundColor(Color(0x1F1F39))
                Text("/ 60min")
                    .font(.custom("Poppins-Regular", size: 10))
                    .foregroundColor(Color(0x858597))
                Spacer()
            }

            Rectangle()
                .fill(Color(0xF4F3FD))
                .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 6, idealHeight: 6, maxHeight: 6)
                .cornerRadius(3)
                .overlay(alignment: .leading) {
                    Rectangle()
                        .fill(LinearGradient(colors: [Color.white.opacity(0), Color(0xFF5106)], startPoint: .leading, endPoint: .trailing))
                        .frame(width: 100, height: 6)

                }
        }
        .padding(20)
        .background(.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.2), radius: 16, x: 0, y: 10)
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
