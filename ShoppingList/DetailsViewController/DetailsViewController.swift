//
//  DetailsViewController.swift
//  ShoppingList
//
//  Created by Radoslaw Sobczak on 11/08/2020.
//  Copyright © 2020 Radoslaw Sobczak. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
   // @IBOutlet weak var productLabel: UILabel!
  //  @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!

    var product: ProductType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

}

extension DetailsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        product?.items.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let item = product?.items[indexPath.row] // odwłanie sie do elementu tablicy
        
        cell.textLabel?.text = item?.name
        return cell
    }
    
    
}
