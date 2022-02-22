//
//  InitialsCircleLabelView.swift
//  CarteleraPeliculApp
//
//  Created by chamuel castillo on 2/21/22.
//

import SwiftUI
import Foundation

struct InitialsCircleLabelView: View {
    var movieName: String
    
    var body: some View {
        
        Text(titleInitials(movieName))
            .frame(width: 50, height: 50)
            .clipShape(Circle())
        
            .overlay(
                Circle().stroke(.gray)
            )
    }
    
    
    
    let titleInitials = { (movieName: String) -> String in
        
        let stringInput = movieName
        let stringInputArr = movieName.components(separatedBy:" ")
        var stringNeed = ""
        
        if stringInputArr.count > 1{
            for string in stringInputArr {
                stringNeed += String(string.first!)
            }
        } else {
            stringNeed = String(stringInput.prefix(2))
        }
        
        return String(stringNeed.prefix(2)).uppercased()
        
    }
}

struct InitialsCircleLabelView_Previews: PreviewProvider {
    static var previews: some View {
        InitialsCircleLabelView(movieName: "Catalist")
    }
}
