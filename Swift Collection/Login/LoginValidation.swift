//
//  LoginValidation.swift
//  Swift Collection
//
//  Created by Aarish on 12/08/22.
//

import Foundation
import UIKit
class LoginValidation {
    func validation(email: String, password: String) -> Bool {
        let reusableAlert = ReusableAlert()
        if email.isEmpty && password.isEmpty {
            print(Constants.title)
            reusableAlert.presentAlertWithTitle(title: "Enter email & password", message: "", options: "Ok") { _ in
                print("alert showing")
            }
            return false
        } else if email.isEmpty {
            print("email is empty")
            reusableAlert.presentAlertWithTitle(title: "Enter an email", message: "", options: "Ok") { _ in
                print("alert showing")
            }
            return false
        } else if password.isEmpty {
            print("password is empty")
            // show the alert
            let title  = "Enter a password"
            reusableAlert.presentAlertWithTitle(title: title, message: "", options: "continue", "cancel") { option in
                switch option {
                case 0:
                    print("option 1")
                case 1:
                    print("option 2")
                default:
                    break
                }
            }
            return false
        }
        return true
    }
}
