//
//  WelcomeViewController.swift
//  HW_2.3
//
//  Created by Ilya Pokhodin on 28.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomUserNameLable: UILabel!
    
    var welcomeLableValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomUserNameLable.text = "Welcome, " + welcomeLableValue
    }
    
}
