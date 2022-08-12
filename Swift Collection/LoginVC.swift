//
//  LoginVC.swift
//  Swift Collection
//
//  Created by Aarish on 11/08/22.
//

import Foundation
import UIKit
import Firebase
class LoginVC: UIViewController {
    
    @IBOutlet weak var loginBtn: UIButton!
    
    @IBOutlet weak var googleBtn: UIButton!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var appleBtn: UIButton!
    @IBOutlet weak var fbBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       setupUI()
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTF.text, let password = passwordTF.text{
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                print(self as Any)
                if let e = error{
                    print(e.localizedDescription)
                }else{
                    print("Login Success")
                }
                
            }
        }
    }
    
    func setupUI(){
        loginBtn.layer.cornerRadius = 8
        emailTF.layer.cornerRadius = 8
        passwordTF.layer.cornerRadius = 8
        emailTF.backgroundColor = .white
        emailTF.setLeftPaddingPoints(10)
        passwordTF.backgroundColor = .white
        passwordTF.setLeftPaddingPoints(10)
        googleBtn.layer.cornerRadius = 8
        appleBtn.layer.cornerRadius = 8
        fbBtn.layer.cornerRadius = 8
    }
    

}
