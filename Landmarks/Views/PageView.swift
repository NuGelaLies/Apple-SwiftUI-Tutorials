//
//  PageView.swift
//  Landmarks
//
//  Created by NuGelaliee on 12/11/20.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    var body: some View {
        PageViewController(pages: pages)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        let data = ModelData().features.map { FeatureCard(item: $0)}
        PageView(pages: data)
            .aspectRatio(3/2, contentMode: .fit)
    }
}
