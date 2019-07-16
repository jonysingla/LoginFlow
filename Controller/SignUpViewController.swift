//
//  SignUpViewController.swift
//  LoginFlow
//
//  Created by Jony on 16/07/19.
//  Copyright © 2019 Jony. All rights reserved.
//

import UIKit
import TPKeyboardAvoidingSwift
import SkyFloatingLabelTextField

class SignUpViewController: UIViewController {

    @IBOutlet weak var btnLoginHere: UIView!
    @IBOutlet weak var btnRegisterNow: UIButton!
    @IBOutlet weak var btnTermsCondition: UIButton!
    
    @IBOutlet weak var txtFullName: SkyFloatingLabelTextField!
    @IBOutlet weak var txtMobileNumber: SkyFloatingLabelTextField!
    @IBOutlet weak var txtEmail: SkyFloatingLabelTextField!
    @IBOutlet weak var txtPassword: SkyFloatingLabelTextField!
    @IBOutlet weak var txtConfirmPassword: SkyFloatingLabelTextField!

    @IBOutlet weak var txtBackgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CustomView.viewBordeColor(viewName: txtBackgroundView)
        CustomButton.btnBorderColor(btnName: btnRegisterNow)
        CustomButton.btnUnderlineTitleWithRange(btnName: btnTermsCondition, btnNameTtile: "By signing up you agree to our Terms and Conditions", location: 31, length: 20)
        
    }
    

    @IBAction func btnLoginHereAction(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func btnRegisterNowAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "OTPViewControllerIdentifier") as! OTPViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btnTermsConditionAction(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TermsConditionViewControllerIdentifer") as! TermsConditionViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
