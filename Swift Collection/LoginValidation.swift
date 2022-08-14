//
//  LoginValidation.swift
//  Swift Collection
//
//  Created by Aarish on 12/08/22.
//

import Foundation
import UIKit
class LoginValidation: UIViewController {
    func validation(email: String, password: String) -> Bool {

        if email.isEmpty && password.isEmpty {
            print("email & password are empty")
            getTopVC()?.presentAlertWithTitle(title: "Enter email & password", message: "", options: "Ok") { _ in
                print("alert showing")
            }
            return false
        } else if email.isEmpty {
            print("email is empty")
            getTopVC()?.presentAlertWithTitle(title: "Enter an email", message: "", options: "Ok") { _ in
                print("alert showing")
            }
            return false
        } else if password.isEmpty {
            print("password is empty")
            // show the alert
            getTopVC()?.presentAlertWithTitle(title: "Enter a password", message: "", options: "Ok") { _ in
                print("alert showing")
            }
            return false
        }
        return true
    }
}
func getTopVC() -> UIViewController? {
    let keyWin = UIApplication
        .shared
        .connectedScenes
        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
        .first { $0.isKeyWindow }
    var topMostViewController = keyWin?.rootViewController

    while let presentedViewController = topMostViewController?.presentedViewController {
        topMostViewController = presentedViewController
    }

    return topMostViewController
}
