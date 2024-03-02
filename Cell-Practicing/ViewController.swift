//
//  ViewController.swift
//  Cell-Practicing
//
//  Created by Noor El-Din Walid on 02/03/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cellTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cellTableView.delegate = self
        cellTableView.dataSource = self
        
        cellTableView.register(UINib(nibName: "TrivagoTableViewCell", bundle: nil), forCellReuseIdentifier: TrivagoTableViewCell.description())
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TrivagoTableViewCell.description(), for: indexPath) as? TrivagoTableViewCell else { return UITableViewCell() }
        
        return cell
    }
}
