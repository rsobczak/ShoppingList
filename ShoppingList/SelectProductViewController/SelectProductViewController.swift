//
//  SelectProductViewController.swift
//  ShoppingList
//
//  Created by Radoslaw Sobczak on 03/08/2020.
//  Copyright © 2020 Radoslaw Sobczak. All rights reserved.
//

import UIKit

enum ProductType: String {
    case bread = "Bread"
    case dairy = "Dairy"
    case fruitsAndVegetables = "Fruits and vegetables"
    case others = "Other"
}

class SelectProductViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier = "ProductTableViewCell"
    
    let products: [ProductType] = [
        .bread,
        .dairy,
        .fruitsAndVegetables,
        .others
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
}

extension SelectProductViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ProductTableViewCell
        
        cell.titleLabel?.text = products[indexPath.row].rawValue
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let product = products[indexPath.row] // ; row-zawiera numer kliknietego wiersza
        
        let viewController = DetailsViewController()
        viewController.product = product // szczegóły jakiejs kategorii kliknietej
        
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}
