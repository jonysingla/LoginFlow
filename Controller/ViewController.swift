//
//  ViewController.swift
//  LoginFlow
//
//  Created by Jony on 16/07/19.
//  Copyright © 2019 Jony. All rights reserved.
//

import UIKit
import TPKeyboardAvoidingSwift
import SkyFloatingLabelTextField

class ViewController: UIViewController {

    @IBOutlet weak var btnForogtPassword: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnRegisterHere: UIButton!
    
    @IBOutlet weak var txtBackgroundView: UIView!
    
    @IBOutlet weak var txtMobileNumber: SkyFloatingLabelTextField!
    @IBOutlet weak var txtPassword: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CustomView.viewBordeColor(viewName: txtBackgroundView)
        CustomButton.btnBorderColor(btnName: btnLogin)
        CustomButton.btnUnderlineTitle(btnName: btnForogtPassword, btnNameTtile: "Forgot Password?")
        CustomButton.btnUnderlineTitleWithRange(btnName: btnRegisterHere, btnNameTtile: "Not registered yet? Register Here", location: 20, length: 13)
       
    }

    @IBAction func btnForgotPasswordAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewControllerIdentifier") as! ForgotPasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func btnLoginAction(_ sender: Any) {
        
    }
    
    
    @IBAction func btnRegisterAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignUpViewControllerIdentifier") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

