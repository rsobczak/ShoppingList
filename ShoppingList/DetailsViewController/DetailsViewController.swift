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
        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "customProductCell")
    }
    

}

extension DetailsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        product?.items.count ?? 0
    }

    /*
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let item = product?.items[indexPath.row] // odwłanie sie do elementu tablicy
        
        cell.textLabel?.text = item?.name
        return cell
    }
*/
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell = tableView.dequeueReusableCell(withIdentifier: "customProductCell", for: indexPath)
            let customCell = cell as? CustomTableViewCell

            //let product = products[indexPath.row]
            let item = product?.items[indexPath.row] // odwłanie sie do elementu tablicy
            
            customCell?.textLabel?.text = item?.name
            cell.imageView?.image = UIImage(named:item!.imageName)
            return customCell!
        }

}
