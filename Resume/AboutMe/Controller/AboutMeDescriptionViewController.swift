//
//  AboutMeDescriptionViewController.swift
//  Resume
//
//  Created by Виталий Сосин on 30.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class AboutMeDescriptionViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = name
    }
    

}
