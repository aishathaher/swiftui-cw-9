//
//  ContentView.swift
//  List
//
//  Created by عايشة on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    var body: some View {
        NavigationView {
            List {
                
           NavigationLink(
            destination: MovieDetailView(movieName:
                                            "Dunkirk", movieCharacters: ["A", "B", "C"])
,
            label: {
                MovieRow(movieName: "Dunkirk", movieCharacters: ["A", "B","C"] )
            })
                
           NavigationLink(
            destination: MovieDetailView(movieName:
                                            "John Wick", movieCharacters: ["D", "F","E"]),
            label: {
                MovieRow(movieName: "John Wick", movieCharacters: ["D", "F","E"] )            })
               
                NavigationLink(
                 destination: MovieDetailView(movieName:
                                                "John Wick", movieCharacters: ["P", "X","Y"])                 ,
                 label: {
                    MovieRow(movieName: "Beauty and the Beast", movieCharacters: ["P", "X","Y"] )          })
                
              
                
                
            }
            .navigationBarTitle("Movies")
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
            Image("movieName")
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
