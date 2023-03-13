//
//  ViewController.swift
//  UIKitDemo
//
//  Created by Mindaugas Balakauskas on 20/12/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var userIDTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Login"
        logInButton.setTitle("Login", for: .normal)
        
    }
    
    
    @IBAction func logInAction(_ sender: Any) {
        let emailID = userIDTextField.text
        print(emailID ?? "No ID or E-mail has been entered")
        
        let password = passwordTextField.text
        print(password ?? "No Password has been entered")
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let listViewController: UIViewController = storyboard.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        // push to the next screen
        self.navigationController?.pushViewController(listViewController, animated: true)
    }
    
}

