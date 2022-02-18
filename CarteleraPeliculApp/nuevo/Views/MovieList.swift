//
//  MovieList.swift
//  CarteleraPeliculApp
//
//  Created by chamuel castillo on 2/17/22.
//

import SwiftUI

struct MovieList: View {
    var body: some View {
        NavigationView {
            List(movies){ movie in

                NavigationLink{
                    MovieDetail(movie: movie)
                } label: {
                    MovieRow(movie: movie)
                }
            }
            .navigationTitle(" Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
