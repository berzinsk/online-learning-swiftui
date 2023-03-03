//
//  ChooseCourseView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 03/03/2023.
//

import SwiftUI

enum FilterCategories {
    case all, popular, new
}

struct ChooseCourseView: View {
    @State var selectedFilter: FilterCategories = .all

    var body: some View {
        VStack {
            HStack {
                Text("Choose your course")
                Spacer()
            }
            HStack {
                FilterButton(title: "All", isSelected: selectedFilter == .all) {
                    selectedFilter = .all
                }
                Spacer()
                FilterButton(title: "Popular", isSelected: selectedFilter == .popular) {
                    selectedFilter = .popular
                }
                Spacer()
                FilterButton(title: "New", isSelected: selectedFilter == .new) {
                    selectedFilter = .new
                }
            }
        }
        .padding(.top, 32)
    }
}

struct ChooseCourseView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCourseView()
    }
}
