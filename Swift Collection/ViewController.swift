//
//  ViewController.swift
//  Swift Collection
//
//  Created by Aarish on 10/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var getStartedBtn: UIButton!
    
    @IBOutlet weak var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getStartedBtn.layer.cornerRadius = 8
        loginBtn.layer.cornerRadius = 8
    }


}


extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
