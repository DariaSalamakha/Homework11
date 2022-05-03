//
//  ViewController.swift
//  Login
//
//  Created by Daria Salamakha on 02.02.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var forgotUserтameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserтameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = UsernameTextField.text
        }
        
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        guard UsernameTextField.text != "" else {return}
        guard PasswordTextField.text != "" else {return}
        performSegue(withIdentifier: "ShowNextPage",
           sender: sender)
    }
    
    @IBAction func forgotUsernameTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowNextPage",
           sender: sender)
       
    }
    
    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowNextPage",
           sender: sender)
    }
}

