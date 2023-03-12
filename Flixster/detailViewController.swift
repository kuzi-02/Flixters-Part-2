//
//  detailViewController.swift
//  Flixster
//
//  Created by Kuzivakwashe Mavera on 3/4/23.
//

import Nuke
import UIKit

class detailViewController: UIViewController {
     
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var movienameLabel: UILabel!
    @IBOutlet weak var avgratingLabel: UILabel!
    @IBOutlet weak var avgcountLabel: UILabel!
    @IBOutlet weak var oglanguageLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
//    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        Nuke.loadImage(with:URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + movie.poster_path.absoluteString)!, into: imageView)
        // Set labels with the associated track values.
        movienameLabel.text = movie.original_title
        descriptionLabel.text = movie.overview
        avgratingLabel.text = "\(movie.vote_average)"

        avgcountLabel.text = "\(movie.vote_count)"
        oglanguageLabel.text = movie.original_language
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
