//
//  AboutMeViewController.swift
//  HW_2.3
//
//  Created by Ilya Pokhodin on 30.10.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = user
    }
    
}
