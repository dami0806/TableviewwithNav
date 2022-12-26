//
//  DetailViewController.swift
//  tablewithNav
//
//  Created by 박다미 on 2022/12/26.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!

    @IBOutlet weak var descriptionLabel: UILabel!
    
    var movieData : Movie?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

     
    }
    func setupUI(){
        movieImageView.image = movieData?.movieImage
        movieNameLabel.text = movieData?.movieName
        descriptionLabel.text = movieData?.movieDescription
        descriptionLabel.numberOfLines = 0
    }
    


}
