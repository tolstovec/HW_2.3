//
//  MoreInfoViewController.swift
//  HW_2.3
//
//  Created by Ilya Pokhodin on 30.10.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet var aboutMeTextLable: UILabel!
    @IBOutlet var aboutMeImageViewOutlet: UIImageView!
    
    //var textLable = textInfo.textAboutMe
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutMeTextLable.text = textInfo.textAboutMe
    }
    
}
