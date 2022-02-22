//
//  ViewModel.swift
//  CarteleraPeliculApp
//
//  Created by chamuel castillo on 2/18/22.
//

import SwiftUI

struct JSONData: Decodable {
    //    var letpage : Int
    var total_pages : Int
    var total_results : Int
    var results : [Movie]
    
    
    
    
}

class APIRequest: ObservableObject {
    
    @Published public var movies: [Movie] = []
    
    
    func fetch() {
        
        // MARK: - API URL
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/top_rated?api_key=bf091621962bdf5c30339e874a2a0c1a&language=en-US.json") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            //Convert to JSON
            do {
                let movies = try JSONDecoder().decode(JSONData.self, from: data)
                DispatchQueue.main.async {
                    
                    self.movies = movies.results
                }
            }
            catch{
                print(error)
            }
        }
        task.resume()
    }
    
    
}


