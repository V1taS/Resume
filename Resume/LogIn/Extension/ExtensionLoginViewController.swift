//
//  ExtensionLoginViewController.swift
//  Resume
//
//  Created by Виталий Сосин on 29.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

extension LoginViewController {
    
    // MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoginSegue" {
            let tabBarController = segue.destination as! UITabBarController
            let destinationVC = tabBarController.viewControllers?.first as! HomeViewController
            destinationVC.userName = sender as? String
        }
    }
    
    // MARK: - Notification function
    func getAlert(title: String, message: String) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let doneAction = UIAlertAction(
            title: "OK",
            style: .default
        ) { _ in }
        alertController.addAction(doneAction)
        present(alertController, animated: true, completion: nil)
    }
    
    // MARK: - Hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
}

    // MARK: - Logic TextField
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        if !userNameTextField.text!.isEmpty {
            passwordTextField.becomeFirstResponder()
        } else {
            userNameTextField.becomeFirstResponder()
        }
        return true
    }
}
