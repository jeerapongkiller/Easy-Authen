//
//  ViewController.swift
//  Easy Authen
//
//  Created by PKRU02 on 7/26/2560 BE.
//  Copyright © 2560 MasterTema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Implicit
    let strDicUser = ["master": "12345", "doramon": "6789"]
    
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextFeild: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBAction func loginButton(_ sender: Any) {
        
        //Get Value From TextField
        let strUser: String = userTextField.text!
        let strPassword: String = passwordTextFeild.text!
        
        print("User ==> \(strUser)")
        print("Password ==> \(strPassword)")
        
        //Check User
        if let strMyUPassword = strDicUser[strUser]{
            print("User OK!")
            
            if strMyUPassword == passwordTextFeild.text{
                
                messageLabel.text = "Welcome User"
                
            }else{
                messageLabel.text = "Please Try Again Password False"
            }
        }else{
        print("User False")
            messageLabel.text = "No This User in My Database"
        }
        
    }   //Login Button
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

