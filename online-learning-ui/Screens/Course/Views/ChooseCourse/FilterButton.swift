//
//  FilterButton.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 03/03/2023.
//

import SwiftUI

struct FilterButton: View {
    let title: String
    let isSelected: Bool
    var onButtonPress: (() -> ())? = nil

    var body: some View {
        Button {
            onButtonPress?()
        } label: {
            Text(title)
                .font(.custom("Poppins-Regular", size: 14))
                .foregroundColor(isSelected ? Color.white : Color(0x858597))
                .frame(width: 88, height: 28)
                .background(isSelected ? Color(0x3D5CFF) : Color.clear)
                .cornerRadius(14)
        }
        .buttonStyle(.plain)
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton(title: "All", isSelected: true)
    }
}
