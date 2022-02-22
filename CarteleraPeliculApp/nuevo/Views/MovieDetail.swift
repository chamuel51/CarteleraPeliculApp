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
        ScrollView() {
            
            VStack() {
                AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w500" + movie.poster_path)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
            
                .foregroundColor(Color.yellow)
                .aspectRatio(contentMode: .fit)
                
                Text(movie.original_title)
                    .font(.title2)
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.accentColor)
                    .frame(maxWidth: .infinity,alignment: .center)
                
                
                Text(String(movie.vote_average)+"/10")
                    .font(.subheadline)
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing)
                    .frame(maxWidth: .infinity,alignment: .trailing)
                    .foregroundColor(Color("Color02"))
                
                Text(movie.overview)
                    .font(.caption)
                    .foregroundColor(Color("Color04"))
                    .padding([.leading, .trailing],10)
            }
        }
        .navigationTitle(movie.original_title)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color("Color01"))
    }
}

struct MovieDetail_Previews: PreviewProvider {
    @StateObject var viewModel = APIRequest()
    
    static var previews: some View {
        Group {
            MovieDetail(movie:Movie(id: 03, original_title: "La casita del horror", poster_path: "/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", overview: "Est d jjdfijgsinignidnigni   gigninsg eiinigngineie gngieg egijning", vote_average: 9.4))
                .previewInterfaceOrientation(.portrait)
        }
    }
}
