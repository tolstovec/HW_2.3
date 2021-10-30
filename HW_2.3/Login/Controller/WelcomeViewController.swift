//
//  WelcomeViewController.swift
//  HW_2.3
//
//  Created by Ilya Pokhodin on 28.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserNameLable: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUserNameLable.text = "Welcome, \(user)!"
    }
    
}
