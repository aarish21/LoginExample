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
    var loginValidation = LoginValidation()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       setupUI()
    }
    @IBAction func loginPressed(_ sender: UIButton) {
        if loginValidation.validation(email: emailTF.text ?? "", password: passwordTF.text ?? "") {
            if let email = emailTF.text, let password = passwordTF.text {
                Auth.auth().signIn(withEmail: email, password: password) { [weak self] _, error in
                    print(self as Any)
                    if let error = error {
                        print(error.localizedDescription)
                    } else {
                        print("Login Success")
                    }
                }
            }
        }
    }
    func setupUI() {
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
extension UIViewController {

    func presentAlertWithTitle(title: String, message: String?, options: String...,
                               completion: @escaping (Int) -> Void) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for (index, option) in options.enumerated() {
            alertController.addAction(UIAlertAction.init(title: option, style: .default, handler: { (_) in
                completion(index)
            }))
        }
        self.present(alertController, animated: true, completion: nil)
    }
}
