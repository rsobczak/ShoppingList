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
    @IBOutlet weak var CategoryImage: UIImageView!
    
    var product: ProductType?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let categoryName = product?.rawValue
        
        productLabel.text = categoryName
        
        CategoryImage.image = UIImage(named:categoryName!)
    }
    
    //switch z obazkami

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
