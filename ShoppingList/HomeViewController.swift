//
//  ViewController.swift
//  ShoppingList
//
//  Created by Radoslaw Sobczak on 02/08/2020.
//  Copyright © 2020 Radoslaw Sobczak. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let editButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(buttonEditTab))
        navigationItem.leftBarButtonItem = editButton
    }

    @objc func buttonEditTab() {
        let selectVC = SelectProductViewController()
        navigationController?.pushViewController(selectVC, animated: true)
  }
}

