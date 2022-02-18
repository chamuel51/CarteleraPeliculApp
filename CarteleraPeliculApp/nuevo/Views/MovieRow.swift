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
            Image("shawshank")
            
                .resizable()
                .frame(width: 45, height: 50)
                .background(.green)
                .clipShape(Circle())
            
            Spacer()

            VStack(alignment: .trailing) {
                //TODO: Change for variable
                Text("The Matrix")
                    .padding(.trailing, 16)
                    .padding(.bottom, 2)
//                    .background(.gray)
                Text("8.0/10")
//                    .multilineTextAlignment(.trailing)
//                    .background(.orange)
                

                    
                    
            }
            

        }
  
//        .background(.pink)
        
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            MovieRow(movie: movies[0])            
            MovieRow(movie: movies[1])
    }
        .previewLayout(.fixed(width: 300, height: 70))


    }
}
