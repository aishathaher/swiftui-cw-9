//
//  MovieDetailView.swift
//  List
//
//  Created by عايشة on 02/01/2021.
//

import SwiftUI

struct MovieDetailView: View {
    let movieName: String
    let movieCharacters: [String]
    
    var body: some View {
        ZStack {
            Group {
                Image(movieName)
                    .resizable()
                    .scaledToFit()
                    .blur(radius: 30)
                Color.white.opacity(0.3)
                
            }.ignoresSafeArea()
            
            VStack(alignment: .center) {
                Image("movieName")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                             
                             Text(movieName)
                                .font(.system(size: 50))
                                .bold()
                         
                             
                             Text(movieCharacters.joined(separator: ", "))
                                .font(.title)
                             Spacer()
            }
            
            .padding(.vertical)
            .foregroundColor(.yellow)
            .shadow(radius: 6)
        }
        }
        
    }
    
    
    struct MovieDetailView_Previews: PreviewProvider {
        static var previews: some View {
            MovieDetailView(movieName: "Dunkirk", movieCharacters: ["Dunkirk", "John Wick", "Beauty and the Beast"])
        }
    }

