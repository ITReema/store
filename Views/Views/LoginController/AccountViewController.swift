//
//  AccountViewController.swift
//  Views
//
//  Created by mac_os on 23/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet var mobile: UITextField!
    @IBOutlet var name: UITextField!
    @IBOutlet var login: UIButton!
    @IBOutlet var signup: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    // MARK: - Navigation

    @IBAction func SignUp(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "NewAccount")
            else {
                print("SignUP (NewAccountViewController) not found")
            return
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func loginButton(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Home")
            else {
                print("Home (HomeViewController) not found")
                return
        }
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}
