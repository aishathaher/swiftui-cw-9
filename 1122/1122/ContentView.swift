//
//  ContentView.swift
//  1122
//
//  Created by عايشة on 02/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    var body: some View {
        NavigationView {
            List {
                
           NavigationLink(
            destination: Image("Dunkirk")                     .ignoresSafeArea()
,
            label: {
                MovieRow(movieName: "Dunkirk", movieCharacters: ["A", "B","C"] )
            })
                
           NavigationLink(
            destination: Image("John Wick")                     .ignoresSafeArea(),
            label: {
                MovieRow(movieName: "John Wick", movieCharacters: ["D", "F","E"] )            })
               
                NavigationLink(
                 destination: Image("Beauty and the Beast")                   ,
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

