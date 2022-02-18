//
//  MovieDetail.swift
//  CarteleraPeliculApp
//
//  Created by chamuel castillo on 2/17/22.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    var body: some View {
        ScrollView {
            Image("shawshank")
                .ignoresSafeArea(edges: .top)
                .frame( height: 300)
            
//            CircleImage(image: Image("shawshank"))
//                .offset(y: -130)
//                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(movie.name)
                    .font(.title)
                .foregroundColor(.black)
                HStack {
                    Text(movie.park)
                        .font(.subheadline)
                    Spacer()
                    Text(movie.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(movie.name)")
                    .font(.title2)
                Text(movie.description)
            }
            .padding()
            
        }
        .navigationTitle(movie.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MovieDetail(movie: movies[0])

        }
    }
}
