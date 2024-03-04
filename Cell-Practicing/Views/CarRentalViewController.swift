//
//  CarRentalViewController.swift
//  Cell-Practicing
//
//  Created by Noor El-Din Walid on 04/03/2024.
//

import UIKit

class CarRentalViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let networkManager = NetworkManager()
    
    var carRentalModel: CarRentalModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "CarRentalTableViewCell", bundle: nil), forCellReuseIdentifier: CarRentalTableViewCell.description())
        callTrivago()
    }
    
    func callTrivago() {
        let endpoint = CarRentalEndpoint.cars
        networkManager.fetch(endpoint: endpoint, expectedType: CarRentalModel.self) { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
                
            case .success(let response):
                self?.carRentalModel = response
                self?.tableView.reloadData()
            }
        }
    }
}

extension CarRentalViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CarRentalTableViewCell.description(), for: indexPath) as? CarRentalTableViewCell else { return UITableViewCell() }
        
        cell.configure(with: carRentalModel?.data[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        CGFloat(273)
    }
}
