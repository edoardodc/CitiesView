//
//  CitiesTableViewController.swift
//  IlMioProgetto
//
//  Created by Owner on 15/07/17.
//  Copyright © 2017 Edoardo Francesco Amedeo. All rights reserved.
//

import UIKit

class CitiesTableViewController: UITableViewController {
    
    let cities = ["Milano", "Bolzano", "Caserta", "Varenna", "Roma", "Palermo", "Venezia", "Firenze"]
}

// MARK: - UITableViewDelegate
extension CitiesTableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let city = cities[indexPath.row]
        print(city)
        
        if let vc = parent as? ViewController {
            vc.presentInfoViewController()
        }
    }
}

// MARK: - UITableViewDataSource
extension CitiesTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = cities[indexPath.row]
        return cell
    }    
}
