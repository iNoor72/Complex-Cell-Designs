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
    @IBOutlet private weak var ratingStarsStackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func calculateHotelRatingCategory(from rating: Double) -> String {
        switch rating {
        case 0..<3:
            return "Bad"
        case 3..<7:
            return "OK"
        case 7..<9:
            return "Very Good"
        case let num where num >= 9:
            return "Outstanding"
        default:
            return "Unknown"
        }
    }
    
    func configure(with property: Hotel?) {
        guard let property = property else { return }
        propertyImageView.image = UIImage(named: "hotel")
        propertyImageView.contentMode = .scaleAspectFill
        propertyTypeLabel.text = property.type.rawValue.capitalized
        ratingLabel.text = "\(property.rating) - \(calculateHotelRatingCategory(from: property.rating))"
        numberOfReviewsLabel.text = "(\(property.noOfRatings))"
        distanceLabel.text = "1.8 kilos from city center"
        lowestPriceTitleLabel.text = "Our lowest price:"
        lowestPriceLabel.text = "\(property.price)"
        if property.isPopular {
            choiceTag.isHidden = false
            choiceTag.setTitle("Popular Choice", for: .normal)
        }
        
        for _ in 0..<property.stars {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            button.setImage(UIImage(systemName: "star.fill")?.withTintColor(.yellow), for: .normal)
            
            ratingStarsStackView.addSubview(button)
            ratingStarsStackView.addArrangedSubview(button)
        }
    }
    
    @IBAction private func exapnderButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction private func favoriteButtonTapped(_ sender: UIButton) {
    }
    
    override func prepareForReuse() {
        for view in ratingStarsStackView.subviews {
            ratingStarsStackView.removeArrangedSubview(view)
        }
    }
}
