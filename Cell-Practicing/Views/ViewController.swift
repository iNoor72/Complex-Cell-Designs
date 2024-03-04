//
//  ViewController.swift
//  Cell-Practicing
//
//  Created by Noor El-Din Walid on 02/03/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var cellTableView: UITableView!
    
    let networkManager = NetworkManager()
    
    var trivagoModel: TrivagoModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cellTableView.delegate = self
        cellTableView.dataSource = self
        
        cellTableView.register(UINib(nibName: "TrivagoTableViewCell", bundle: nil), forCellReuseIdentifier: TrivagoTableViewCell.description())
        callTrivago()
    }
    
    func callTrivago() {
        let endpoint = TrivagoEndpoint.hotels
        networkManager.fetch(endpoint: endpoint, expectedType: TrivagoModel.self) { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
                
            case .success(let response):
                self?.trivagoModel = response
                self?.cellTableView.reloadData()
            }
        }
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TrivagoTableViewCell.description(), for: indexPath) as? TrivagoTableViewCell else { return UITableViewCell() }
        
        cell.configure(with: trivagoModel?.data[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        CGFloat(400)
    }
}
