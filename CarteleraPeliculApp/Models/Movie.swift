//
//  Movie.swift
//  CarteleraPeliculApp
//
//  Created by chamuel castillo on 2/17/22.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Codable, Identifiable  {
    
    var id: Int
    var original_title: String
    var poster_path: String
    var overview: String
    var vote_average: Float

}
