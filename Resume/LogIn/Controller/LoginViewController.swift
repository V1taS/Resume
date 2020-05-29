//
//  LoginViewController.swift
//  Resume
//
//  Created by Виталий Сосин on 29.05.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let logIn = LoginModel.getLogin()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logInAction() {
        if userNameTextField.text == logIn.first?.login,
            passwordTextField.text == logIn.first?.password {
            performSegue(withIdentifier: "LoginSegue",
                         sender: logIn.first?.login)
        } else {
            getAlert(title: "Incorrect login or password",
                     message: "See the tip")
        }
    }
    
    @IBAction func forgotUserNameAction() {
        getAlert(title: "Forgot User Name?",
                 message: "User Name: root")
    }
    
    @IBAction func forgotPasswordAction() {
        getAlert(title: "Forgot Password?",
                 message: "Password: root")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}
