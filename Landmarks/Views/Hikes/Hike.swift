//
//  Hike.swift
//  Landmarks
//
//  Created by NuGelaliee on 12/10/20.
//

import Foundation

struct Hike: Hashable, Codable, Identifiable {
    
    var id, difficulty: Int
    var distance: Double
    var name: String
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        return Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        
        var distanceFromStart: Double
        
        var elevation, pace, heartRate: Range<Double>
    }

}

