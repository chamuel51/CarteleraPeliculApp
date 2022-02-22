//
//  ContentView.swift
//  CarteleraPeliculApp
//
//  Created by chamuel castillo on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
//        UITableViewCell.appearance().backgroundColor = .orange
        UITableView.appearance().backgroundColor = UIColor.init(named:  "Color01")
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.init(named: "Color03") ?? UIColor.systemOrange]

        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.init(named: "Color03") ?? UIColor.systemOrange]    }
    var body: some View {
        MovieList()
            .foregroundColor(.blue)
            .background(.blue)
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
