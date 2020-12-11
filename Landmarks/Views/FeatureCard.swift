//
//  FeatureCard.swift
//  Landmarks
//
//  Created by NuGelaliee on 12/11/20.
//

import SwiftUI

struct FeatureCard: View {
    var item: Landmark
    var body: some View {
        item.featureImage?
            .resizable()
            .aspectRatio(3/2, contentMode: .fit)
            .overlay(TextOverLay(item: item))
    }
}

struct TextOverLay: View {
    var item: Landmark
    
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [Color.black.opacity(0.6), Color.black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading, content: {
            Rectangle().fill(gradient)
            VStack(alignment: .leading, spacing: 0, content: {
                Text(item.name)
                    .font(.title)
                    .bold()
                Text(item.park)
            })
            .padding()
        })
        .foregroundColor(.white)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(item: ModelData().features[0])
    }
}
