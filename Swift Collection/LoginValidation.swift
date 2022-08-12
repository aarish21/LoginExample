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
        if email.isEmpty {
           print("email is empty")
            // show the alert
            return false
        }
        if password.isEmpty {
           print("password is empty")
            // show the alert
            return false
        }
        if email.isEmpty && password.isEmpty {
            print("email & password are empty")
            return false
        }
        return true
    }
}
