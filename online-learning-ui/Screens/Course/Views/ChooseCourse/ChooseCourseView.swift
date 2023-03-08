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
    var onCoursePress: ((Course) -> Void)?

    private let allCourses: [Course] = [
        Course(name: "Product Design v1.0",
               author: "Robertson Connine",
               price: 190,
               lenght: 16,
               enrolled: 800,
               dateCreated: Date.now.addingTimeInterval(-(86400 * 89))
              ),
        Course(name: "Flutter Development",
               author: "Karlis Berzins",
               price: 210,
               lenght: 18,
               enrolled: 1200,
               dateCreated: Date.now.addingTimeInterval(-(86400 * 93))
              ),
        Course(name: "SwiftUI Development",
               author: "Karlis Berzins",
               price: 210,
               lenght: 14,
               enrolled: 1300,
               dateCreated: Date.now.addingTimeInterval(-(86400 * 101))
              ),
        Course(name: "Visual Design",
               author: "Bert Pullman",
               price: 230,
               lenght: 12,
               enrolled: 500,
               dateCreated: Date.now.addingTimeInterval(-(86400 * 35))
              )
    ]

    @State private var filteredCourses: [Course] = []
    @State private var selectedFilter: FilterCategories = .all

    var body: some View {
        VStack {
            HStack {
                Text("Choose your course")
                    .font(.custom("Poppins-Medium", size: 18))
                    .foregroundColor(Color(0x1F1F39))
                Spacer()
            }
            HStack {
                FilterButton(title: "All", isSelected: selectedFilter == .all) {
                    selected(filter: .all)
                }
                Spacer()
                FilterButton(title: "Popular", isSelected: selectedFilter == .popular) {
                    selected(filter: .popular)
                }
                Spacer()
                FilterButton(title: "New", isSelected: selectedFilter == .new) {
                    selected(filter: .new)
                }
            }
            List(filteredCourses) { course in
                ZStack {
                    CourseRow(course: course)
                    NavigationLink {
                        CourseDetailsView(course: course)
                    } label: {
                        EmptyView()
                    }
                    .opacity(0)
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .padding(.horizontal, -20)
        }
        .padding(.top, 32)
        .navigationTitle("")
        .onAppear {
            filteredCourses = allCourses
        }
    }

    private func selected(filter: FilterCategories) {
        selectedFilter = filter

        switch filter {
        case .all:
            filteredCourses = allCourses
        case .popular:
            filteredCourses = allCourses.filter { $0.enrolled > 1000 }
        case .new:
            let currentDate = Date.now
            let lastNinetyDays = Date.now.addingTimeInterval(-(86400 * 90))

            let dataRange = lastNinetyDays...currentDate

            filteredCourses = allCourses.filter { dataRange.contains($0.dateCreated) }
        }
    }
}

struct ChooseCourseView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseCourseView()
    }
}
