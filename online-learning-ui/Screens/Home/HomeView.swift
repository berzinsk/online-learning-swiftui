//
//  HomeView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 28/02/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HomeHeaderView()
            TodayView()
                .padding(.horizontal, 20)
            StartLearningView()
                .padding(20)
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
