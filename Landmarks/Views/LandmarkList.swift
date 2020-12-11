//
//  LandmarkList.swift
//  Landmarks
//
//  Created by NuGelaliee on 12/10/20.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavotiteOnly = false
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavotiteOnly, label: {
                    Text("Favotite only")
                })
                ForEach(filteredLankmarks) { item in
                    NavigationLink(
                        destination: LandmarkDetail(item: item)) {
                        LandmarkRow(landmark: item)
                    }
                }
            }
            .navigationTitle("Lankmarks")
        }
    }
    
    var filteredLankmarks: [Landmark] {
        modelData.landmarks.filter { $0.isFavorite || !showFavotiteOnly }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
