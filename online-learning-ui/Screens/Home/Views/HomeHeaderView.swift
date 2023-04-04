//
//  HomeHeaderView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 28/02/2023.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Hi, Karlis")
                    .font(.custom("Poppins-Bold", size: 24))
                    .foregroundColor(.white)
                Text("Let's start learning")
                    .font(.custom("Poppins-Reguler", size: 14))
                    .foregroundColor(.white)
            }

            Spacer()

            Image("avatar")
                .resizable()
                .frame(width: 36, height: 50)
        }
        .padding(EdgeInsets(top: 64, leading: 16, bottom: 64, trailing: 16))
        .background(Color(0x3D5CFF))
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
