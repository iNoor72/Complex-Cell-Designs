//
//  CarRentalTableViewCell.swift
//  Cell-Practicing
//
//  Created by Noor El-Din Walid on 04/03/2024.
//

import UIKit

class CarRentalTableViewCell: UITableViewCell {
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var numberOfPersonsTag: UIButton!
    @IBOutlet weak var fuelTypeTag: UIButton!
    @IBOutlet weak var gearTypeTag: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var starsTag: UIButton!
    @IBOutlet weak var carNameLabel: UILabel!
    @IBOutlet weak var carTypeTag: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with carModel: Car?) {
        guard let carModel = carModel else { return }
        carImage.image = UIImage(named: "doo")
        carImage.contentMode = .scaleAspectFill
        carImage.backgroundColor = .gray
        numberOfPersonsTag.setTitle("\(carModel.noOfSeats)", for: .normal)
        fuelTypeTag.setTitle(carModel.fuelType.rawValue, for: .normal)
        gearTypeTag.setTitle(carModel.gearType.rawValue, for: .normal)
        priceLabel.text = "$\(carModel.price)/hr"
        starsTag.setTitle("\(carModel.rating)", for: .normal)
        carNameLabel.text = carModel.name
        carTypeTag.setTitle(carModel.type.rawValue, for: .normal)
    }
    
    @IBAction func favoriteButtonTapped(_ sender: UIButton) {
    }
}
