//
//  datasource.swift
//  Flixster
//
//  Created by Kuzivakwashe Mavera on 3/3/23.
//

import Foundation


struct MoviesResponse: Decodable {
    
    var results: [Movie] = []
}

struct Movie: Decodable {
    let original_title: String
    let overview: String
    let poster_path: URL
    let backdrop_path: URL
    let vote_average: Float
    let vote_count: Int
    let original_language: String
}





/*
extension Movie {
    
    static var mockMovies: [Movie]  = [
        Movie(movieName: "Knock at the Cabin",
              movieDescription: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
              artworkUrl100: URL(string:"https://www.themoviedb.org/t/p/w188_and_h282_bestv2/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!, v_average: "Voting Average: 6.5", v_count : "Vote Count: 670", oglanguage: "Popularity: 4969.06"),
        
        Movie(movieName: "Black Panther: Wakanda Forever",
              movieDescription: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death. As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
              artworkUrl100: URL(string: "https://www.themoviedb.org/t/p/w188_and_h282_bestv2/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
        v_average: "Voting Average: 7.4", v_count : "Vote Count: 3708", oglanguage: "Popularity: 3501.282"),
                
        Movie(movieName: "Puss in Boots: The Last Wish",
              movieDescription: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
              artworkUrl100: URL(string: "https://www.themoviedb.org/t/p/w188_and_h282_bestv2/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!,
        v_average: "Voting Average: 8.4", v_count : "Vote Count: 4159", oglanguage: "Popularity: 3278.515"),
        
        Movie(movieName: "Huesera: The Bone Woman",
              movieDescription: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.",
              artworkUrl100: URL(string: "https://www.themoviedb.org/t/p/w188_and_h282_bestv2/7NhG3NClQ1xrc3kEwTiwFht5Y3L.jpg")!,
        v_average: "Voting Average: 6.6", v_count : "Vote Count: 40", oglanguage: "Popularity: 1896.806"),
        
        Movie(movieName: "M3GAN",
              movieDescription: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
              artworkUrl100: URL(string: "https://www.themoviedb.org/t/p/w188_and_h282_bestv2/xFsqpz9wn7yREHWGQvviiJE9RVO.jpg")!,
        v_average: "Voting Average: 7.5", v_count : "Vote Count: 1844", oglanguage: "Poularity: 1731.622")
    ]
}
*/
