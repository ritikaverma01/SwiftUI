//
//  Landmarks.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 18/04/22.
//

import SwiftUI
import CoreLocation
import Foundation

struct Landmarks: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinates: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
}
