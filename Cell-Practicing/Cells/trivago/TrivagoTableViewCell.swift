//
//  TrivagoTableViewCell.swift
//  Cell-Practicing
//
//  Created by Noor El-Din Walid on 02/03/2024.
//

import UIKit

class TrivagoTableViewCell: UITableViewCell {
    @IBOutlet private weak var choiceTag: UIButton!
    @IBOutlet private weak var favoriteButton: UIButton!
    @IBOutlet private weak var propertyImageView: UIImageView!
    @IBOutlet private weak var propertyTypeLabel: UILabel!
    @IBOutlet private weak var propertyName: UILabel!
    @IBOutlet private weak var ratingLabel: UILabel!
    @IBOutlet private weak var numberOfReviewsLabel: UILabel!
    @IBOutlet private weak var distanceLabel: UILabel!
    @IBOutlet private weak var reservationView: UIView!
    @IBOutlet private weak var lowestPriceTitleLabel: UILabel!
    @IBOutlet private weak var lowestPriceLabel: UILabel!
    @IBOutlet private weak var exapnderButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction private func exapnderButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction private func favoriteButtonTapped(_ sender: UIButton) {
    }
}
