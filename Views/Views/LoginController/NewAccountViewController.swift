//
//  NewAccountViewController.swift
//  Views
//
//  Created by mac_os on 23/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import UIKit

class NewAccountViewController: UIViewController {

    @IBOutlet var name: UITextField!
    @IBOutlet var mobile: UITextField!
    @IBOutlet var signup: UIButton!
    @IBOutlet var login: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Navigation
    
    @IBAction func login(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Account")
            else {
                print("SignUP (NewAccountViewController) not found")
                return
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        self.performSegue(withIdentifier: "CodeConfirm", sender: self)
        
    }
}
