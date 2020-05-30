//
//  ExtensionAboutMe.swift
//  Resume
//
//  Created by Виталий Сосин on 30.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

extension AboutMeViewController {
    
    // MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AboutMeSegue" {
            let descriptionVC = segue.destination as! AboutMeDescriptionViewController
            descriptionVC.name = sender as? String
        }
    }
    
    // MARK: - Hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
}

// MARK: - Logic TextField
extension AboutMeViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if !textField.text!.isEmpty {
            textField.becomeFirstResponder()
        }
        return true
    }
}
