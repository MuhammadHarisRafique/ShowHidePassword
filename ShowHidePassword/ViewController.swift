//  ViewController.swift
//  ShowHidePassword
//  Created by Higher Visibility on 09/03/2018.
//  Copyright © 2018 Higher Visibility. All rights reserved.


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtbox: UITextField!
    @IBOutlet weak var btnShowHidePassword: UIButton!
    
    var password_Hide = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      self.txtbox.isSecureTextEntry = true
    }

    @IBAction func btnAction(_ sender: UIButton) {
        
        if self.txtbox.text != ""{
        
        if self.password_Hide == true{
        
        self.txtbox.isSecureTextEntry = false
        self.password_Hide = false
        self.btnShowHidePassword.setTitle("Hide", for: .normal)
        
        }else{
            
            self.txtbox.isSecureTextEntry = true
            self.password_Hide = true
            self.btnShowHidePassword.setTitle("Show", for: .normal)
        }
        
        }
        
    }
}

