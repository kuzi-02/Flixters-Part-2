//
//  Poster.swift
//  Flixster
//
//  Created by Kuzivakwashe Mavera on 3/12/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    var results: [Poster]
}

struct Poster: Decodable {
    let backdrop_path: URL
}
