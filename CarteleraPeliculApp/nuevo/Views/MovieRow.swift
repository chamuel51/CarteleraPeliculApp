//
//  MovieRow.swift
//  CarteleraPeliculApp
//
//  Created by chamuel castillo on 2/17/22.
//

import SwiftUI

struct MovieRow: View {
    
    var movie: Movie
    var body: some View {
        HStack {
            InitialsCircleLabelView(movieName: movie.original_title)
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text(movie.original_title)
                    .fontWeight(.medium)
                    .foregroundColor(Color("Color03"))
                    .padding(.trailing, 16)
                    .padding(.bottom, 2)
                
                Text(String(movie.vote_average) + "/10")
                    .font(.caption)
                    .foregroundColor(Color("Color02"))
            }
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            //            MovieRow(movie: movies[0])
            MovieRow(movie: Movie(id: 03, original_title: "La casita del horror", poster_path: "/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", overview: "Est d jjdfijgsinignidnigni   gigninsg eiinigngineie gngieg egijning", vote_average: 9.4))
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
