//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by NuGelaliee on 12/10/20.
//

import SwiftUI

struct LandmarkDetail: View {
    var item: Landmark
    var body: some View {
        ScrollView {
            MapView(coordinate: item.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: item.image)
                .offset(y: -130)
                .padding(.bottom, -130)
                
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.title)
                HStack {
                    Text(item.park)
                    Spacer()
                    Text(item.state)

                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(item.name)")
                    .font(.title2)
                Text(item.description)
            }.padding()
            
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(item: ModelData().landmarks[0])
    }
}
