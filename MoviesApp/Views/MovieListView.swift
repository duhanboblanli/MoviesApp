//
//  MovieListView.swift
//  MoviesApp
//
//  Created by Duhan Boblanlı on 30.08.2023.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct MovieListView: View {
    
    // Verilen movies listesinin başlıklarını döndürür
    let movies: [MovieViewModel]
    
    var body: some View {
        List(self.movies, id: \.imdbId) { movie in
            MovieCell(movie: movie)
        }
    }
}

struct MovieCell: View {
    
    let movie: MovieViewModel
    
    var body: some View {
        HStack (alignment: .top) {
            
            URLImage (url: movie.poster)
                .frame (width: 100, height: 120)
                .cornerRadius (6)
            
            VStack (alignment: .leading) {
                Text (movie.title)
                    .font(.headline)
                
                Text(movie.year)
                    .opacity(0.5)
                    .padding(.top,10)
                
            }.padding(5)
            Spacer()
        }.contentShape(Rectangle())
    }
}