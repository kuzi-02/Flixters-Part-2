//
//  PostersViewController.swift
//  Flixster
//
//  Created by Kuzivakwashe Mavera on 3/12/23.
//
import Nuke
import UIKit

class PostersViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        posters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCell

            // Use the indexPath.item to index into the albums array to get the corresponding album
            let poster = posters[indexPath.item]

            // Get the artwork image url
            //let imageUrl = poster.artworkUrl100

            // Set the image on the image view of the cell
        Nuke.loadImage(with:URL(string: "https://image.tmdb.org/t/p/w600_and_h900_bestv2/" + poster.backdrop_path.absoluteString)!, into: cell.PosterImageView)
            return cell
    }
    
    
    var posters: [Poster] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=0d04c3a0691807491633e9d7fc0402fe")!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            // The `JSONSerialization.jsonObject(with: data)` method is a "throwing" function (meaning it can throw an error) so we wrap it in a `do` `catch`
            // We cast the resultant returned object to a dictionary with a `String` key, `Any` value pair.
            do {
                
                let decoder = JSONDecoder()

                // Use the JSON decoder to try and map the data to our custom model.
                // TrackResponse.self is a reference to the type itself, tells the decoder what to map to.
                let response = try decoder.decode(PosterSearchResponse.self, from: data)

                // Access the array of tracks from the `results` property
                let posters = response.results
                print("✅ \(posters)")
                DispatchQueue.main.async {
                    self?.posters = posters
                    self?.collectionView.reloadData()
                }
               
            } catch {
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }

        // Initiate the network request
        task.resume()
        print(posters)
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout

        layout.minimumInteritemSpacing = 4
        layout.minimumLineSpacing = 4
        let numberOfColumns: CGFloat = 3
        let width = (collectionView.bounds.width - layout.minimumInteritemSpacing * (numberOfColumns - 1)) / numberOfColumns
        layout.itemSize = CGSize(width: width, height: width)

        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    @IBOutlet weak var collectionView: UICollectionView!
}

