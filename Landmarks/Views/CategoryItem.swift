//
//  CategoryItem.swift
//  Landmarks
//
//  Created by NuGelaliee on 12/10/20.
//

import SwiftUI

struct CategoryItem: View {
    var item: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            item.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(item.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var item = ModelData().landmarks[0]
    static var previews: some View {
        CategoryItem(item: item)
    }
}
