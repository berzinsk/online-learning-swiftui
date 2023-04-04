//
//  AppView.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 07/03/2023.
//

import SwiftUI

enum Tabs: String {
    case home = "home"
    case course = "course"
    case message = "message"
}

struct AppView: View {
    @State private var selectedItem = 0

    var body: some View {
        TabView(selection: $selectedItem) {
            Group {
                HomeView()
                    .tabItem {
                        TabItem(tab: .home, selected: selectedItem == 0)
                    }
                    .tag(0)
                CourseView()
                    .tabItem {
                        TabItem(tab: .course, selected: selectedItem == 1)
                    }
                    .tag(1)
                MessageListView()
                    .tabItem {
                        TabItem(tab: .message, selected: selectedItem == 2)
                    }
                    .tag(2)
            }
            .toolbar(.visible, for: .tabBar)
            .toolbarBackground(Color.white, for: .tabBar)
        }
        .background(.yellow)
    }
}

struct TabItem: View {
    let tab: Tabs
    let selected: Bool

    var body: some View {
        Label {
            Text(tab.rawValue.capitalized)
                .font(.custom("Poppins-Medium", size: 11))
                .foregroundColor(selected ? Color(0x3D5CFF) : Color(0xB8B8D2))
        } icon: {
            Image("icon_tabbar_\(tab.rawValue)_\(selected ? "active" : "inactive")")
                .tint(.yellow)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
