//
//  SearchField.swift
//  online-learning-ui
//
//  Created by Karlis Berzins on 01/03/2023.
//

import SwiftUI

struct SearchField: View {
    @State private var searchText = ""

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(0xF4F3FD))
                .cornerRadius(16)
                .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 48, idealHeight: 48, maxHeight: 48)

            HStack {
                Image(systemName: "magnifyingglass")
                    .frame(width: 14, height: 14)
                    .foregroundColor(Color(0xB8B8D2))
                TextField("", text: $searchText, prompt: Text("Find Course").foregroundColor(Color(0xB8B8D2)))
                    .font(.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color(0x1F1F39))
                Image("icon_filter")
                    .frame(width: 21, height: 20)
            }
            .padding(.horizontal, 16)
        }
    }
}

struct SearchField_Previews: PreviewProvider {
    static var previews: some View {
        SearchField()
    }
}
