//
//  LoginViewController.swift
//  DropDiscuss
//
//  Created by Avijeet Sachdev on 5/3/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailField: InsetTextField!
    @IBOutlet weak var passwordField: InsetTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        emailField.delegate = self
        passwordField.delegate = self
    }
    @IBAction func closeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func signInButtonPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!) { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                }
                else {
                    print("Error: \(String(describing: loginError))")
                }
                // if login fails, register user
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, registrationError) in
                    if success {
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, nil) in
                            self.dismiss(animated: true, completion: nil)
                            print("User registered successfully")
                        })
                    }
                    else {
                        print(String(describing: registrationError))
                    }
                })
            }
        }
    }
    
}

extension LoginViewController: UITextFieldDelegate {
    
}
