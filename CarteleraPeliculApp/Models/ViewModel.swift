//
//  ViewModel.swift
//  CarteleraPeliculApp
//
//  Created by chamuel castillo on 2/18/22.
//

import SwiftUI

class ViewModel: ObservableObject {
    
    func fetch() {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/top_rated?api_key=bf091621962bdf5c30339e874a2a0c1a&language=en-US&page=1") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            //Convert to JSON
            
            do {
                let movies = try JSONDecoder(). decode([])
            }
        }
    }

    
}


