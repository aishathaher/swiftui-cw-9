//
//  ContentView.swift
//  List
//
//  Created by عايشة on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            MovieRow(movieName: "Dunkirk", movieCharacters: ["A", "B","C"] )
            MovieRow(movieName: "John Wick", movieCharacters: ["D", "F","E"] )
            MovieRow(movieName: "Beauty and the Beast", movieCharacters: ["P", "X","Y"] )

        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MovieRow: View {
    let movieName: String
    let movieCharacters: [String]
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "plus")
            Image("1")
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.yellow)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(movieName)
                    .font(.title)
                Text(movieCharacters.joined(separator: ", "))
                
                
            }
        }
    }
}
