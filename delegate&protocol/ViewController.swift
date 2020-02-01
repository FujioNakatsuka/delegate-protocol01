//
//  ViewController.swift
//  delegate&protocol
//
//  Created by 中塚富士雄 on 2020/02/01.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passWordTextField.delegate = self
        
        
        
    }
    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        
        usernameLabel.text = userNameTextField.text
        passwordLabel.text = passWordTextField.text
        
    }
  
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
    
    }
    
   
}



