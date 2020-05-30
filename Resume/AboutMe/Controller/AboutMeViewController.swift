//
//  QuestionnaireViewController.swift
//  Resume
//
//  Created by Виталий Сосин on 29.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextAction() {
        if !textField.text!.isEmpty {
            performSegue(withIdentifier: "AboutMeSegue",
                         sender: textField.text)
        }
    }
    
    @IBAction func unwindSegueAboutMe(segue: UIStoryboardSegue) {
        textField.text = ""
    }
}
