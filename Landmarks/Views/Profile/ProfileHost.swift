//
//  ProfileHost.swift
//  Landmarks
//
//  Created by NuGelaliee on 12/10/20.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    var body: some View {
        ProfileSummary(profile: draftProfile)
    }
}

struct ProfileHost_PreViews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
    
}
