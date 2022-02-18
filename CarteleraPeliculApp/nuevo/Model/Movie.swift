//
//  Movie.swift
//  CarteleraPeliculApp
//
//  Created by chamuel castillo on 2/17/22.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Codable, Identifiable  {
    
//    var id: Int
//    var name: String
//    var park: String
//    var state: String
//    var description: String
    var id: Int
    var backdropImageString: String
    var overview: String
    var rating: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
//    private var coordinates: Coordinates
    
    
//    var locationCoordinate: CLLocationCoordinate2D {
//        CLLocationCoordinate2D(
//            latitude: coordinates.latitude,
//            longitude: coordinates.longitude)
//    }
//
//    struct Coordinates: Hashable, Codable {
//        var latitude: Double
//        var longitude: Double
//    }

}
