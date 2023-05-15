//
//  ViewController.swift
//  Chat-365
//
//  Created by ahmed on 12/05/2023.
//

import UIKit

class AuthenticationViewController: UIViewController {

    var isLogin: Bool = false
    
    @IBOutlet weak var viewTitle: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var confirmPasswordLabel: UILabel!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var questionLable: UILabel!
    
   
    @IBOutlet weak var questionBtn: UIButton!
    @IBOutlet weak var forgetPasswordBtn: UIButton!
    @IBOutlet weak var resendEMailBtn: UIButton!
    @IBOutlet weak var authenticationBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = " "
        passwordLabel.text = ""
        confirmPasswordLabel.text = ""
        
        email.delegate = self
        password.delegate = self
        confirmPassword.delegate = self
    }

    @IBAction func resendEmail(_ sender: Any) {
    }
    @IBAction func forgetPassword(_ sender: Any) {
    }
   
    @IBAction func resendEmailAction(_ sender: Any) {
    }
    
    @IBAction func authenticate(_ sender: Any) {
        
    }
    
    @IBAction func questionAction(_ sender: Any) {
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

// MARK: - functions
extension AuthenticationViewController {
    private func updateUIMode(mode: Bool){
        if !mode {
            viewTitle.text = "Login"
            confirmPassword.isHidden = true
            confirmPasswordLabel.isHidden = true
            resendEMailBtn.isHidden = true
            forgetPasswordBtn.isHidden = false
            authenticationBtn.setTitle("Login", for: .normal)
            questionBtn.setTitle("Register", for: .normal)
        questionLable.text = "Do you have an account?"
        }
        else{
                viewTitle.text = "Register"
                confirmPassword.isHidden = false
            confirmPasswordLabel.isHidden = false
                resendEMailBtn.isHidden = false
                forgetPasswordBtn.isHidden = true
                authenticationBtn.setTitle("Register", for: .normal)
                questionBtn.setTitle("Login", for: .normal)
            questionLable.text = "Create Account?"
        }
        
        isLogin.toggle()
    }
}
