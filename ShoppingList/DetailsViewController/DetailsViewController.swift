//
//  DetailsViewController.swift
//  ShoppingList
//
//  Created by Radoslaw Sobczak on 11/08/2020.
//  Copyright © 2020 Radoslaw Sobczak. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var productLabel: UILabel!
    
    var product: ProductType?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productLabel.text = product?.rawValue
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
