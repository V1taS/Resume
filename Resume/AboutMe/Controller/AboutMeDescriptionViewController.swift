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
    @IBOutlet weak var buttonOutlet: UIButton!
    
    var name: String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonOutlet.layer.cornerRadius = buttonOutlet.frame.width / 20
        nameLabel.text = name
    }
}
