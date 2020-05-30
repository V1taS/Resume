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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AboutMeSegue" {
            let descriptionVC = segue.destination as! AboutMeDescriptionViewController
            descriptionVC.name = sender as? String
        }
    }
    
    @IBAction func nextAction() {
        if !textField.text!.isEmpty {
           performSegue(withIdentifier: "AboutMeSegue", sender: textField.text)
        }
    }
    
    @IBAction func unwindSegueAboutMe(segue: UIStoryboardSegue) {
        textField.text = ""
    }
}

extension AboutMeViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if !textField.text!.isEmpty {
            textField.becomeFirstResponder()
        }
        return true
    }
}
