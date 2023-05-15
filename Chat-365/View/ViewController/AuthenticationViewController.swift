//
//  ViewController.swift
//  Chat-365
//
//  Created by ahmed on 12/05/2023.
//

import UIKit

class AuthenticationViewController: UIViewController {

    
    @IBOutlet weak var viewTitle: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var confirmPasswordLabel: UILabel!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    @IBOutlet weak var questionBtn: UIButton!
    @IBOutlet weak var authenticationBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = ""
        passwordLabel.text = ""
        confirmPasswordLabel.text = ""
        
        email.delegate = self
        password.delegate = self
        confirmPassword.delegate = self
    }

    @IBAction func resendEmail(_ sender: Any) {
    }
    
    @IBAction func authenticate(_ sender: Any) {
    }
    
    
    @IBAction func setQuestionAction(_ sender: Any) {
    }
}

// MARK: - text Field Delegate

extension AuthenticationViewController : UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        emailLabel.text = email.hasText ? "Email" : ""
        passwordLabel.text = password.hasText ? "Password" : ""
        confirmPasswordLabel.text = confirmPassword.hasText ? "Confirm Password" : ""
    }
}
