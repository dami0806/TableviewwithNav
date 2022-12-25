//
//  MovieCell.swift
//  tablewithNav
//
//  Created by 박다미 on 2022/12/25.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var mainImageLabel: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
