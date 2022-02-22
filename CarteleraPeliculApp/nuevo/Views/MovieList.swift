//
//  MovieList.swift
//  CarteleraPeliculApp
//
//  Created by chamuel castillo on 2/17/22.
//

import SwiftUI

struct MovieList: View {
    @StateObject var viewModel = APIRequest()
    let currentDate = Date()
    var body: some View {
        NavigationView {
            List(viewModel.movies){ movie in

                NavigationLink{
                    MovieDetail(movie: movie)
                } label: {
                    MovieRow(movie: movie)
                }
            }
            .navigationTitle("Chamuel \(currentDate.formatted(date: .abbreviated, time: .omitted))")
            .foregroundColor(Color("Color01"))
            
            
            .onAppear {
                viewModel.fetch()
            }
            .background(.green)

        }
        .background(.green)
    }
        
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
