//
//  ProductMangmentViewController.swift
//  Views
//
//  Created by mac_os on 24/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import UIKit

class ProductMangmentViewController: UIViewController {

    @IBOutlet var name: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var login: UIButton!
    var pwd = "00000"
    var nameAdmin = "Admin"
    
    @IBOutlet var addProduct: UIButton!
    @IBOutlet var addSection: UIButton!
    @IBOutlet var update: UIButton!
    @IBOutlet var delete: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    @IBAction func loginButton(_ sender: Any) {

        if name.text == nameAdmin {
            if password.text == pwd {
    
                guard let vc = storyboard?.instantiateViewController(withIdentifier: "Admin")
                    else { print("Not authorized")
                        return }
                navigationController?.pushViewController(vc, animated: true)
        } else {
            let alert = UIAlertController(title: "alert", message: "Access only to authorized", preferredStyle: .alert )
            alert.addAction(UIAlertAction (title: "OK", style: .default, handler: { _ in
                return
            }))
            self.present(alert, animated: true, completion: nil)
            return
        }
    }
}
    
    
    @IBAction func addButton(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Add")
            else {return}
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func addSectionButton(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "AddSection")
            else {return}
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func updateButton(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Update")
            else {return}
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Delete")
            else {return}
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
    
    
    
}
