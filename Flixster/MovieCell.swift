//
//  MovieCell.swift
//  Flixster
//
//  Created by Kuzivakwashe Mavera on 3/4/23.
//

import UIKit
import Nuke


class MovieCell: UITableViewCell {

    
    @IBOutlet weak var tableView: UIImageView!
    @IBOutlet weak var movieNamelabel: UILabel!
    
    @IBOutlet weak var movieDescLabel: UILabel!
    
    func configure(with movie: Movie) {
        
        
        movieDescLabel.text = movie.overview
        movieNamelabel.text = movie.original_title
        Nuke.loadImage(with:URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + movie.backdrop_path.absoluteString)!, into:  tableView)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
