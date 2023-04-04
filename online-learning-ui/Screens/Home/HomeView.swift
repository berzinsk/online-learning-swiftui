//
//  HomeView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 28/02/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    HomeHeaderView()
                    TodayView()
                        .padding(.horizontal, 20)
                        .offset(CGSize(width: 0, height: 96))
                }

                Group {
                    StartLearningView()
                        .padding(.top, 72)
                    LearningPlan()
                        .padding([.vertical], 24)
                    MeetupView()
                }
                .padding(.horizontal, 20)
            }
        }
        .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
