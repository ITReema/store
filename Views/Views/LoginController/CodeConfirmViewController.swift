//
//  CodeConfirmViewController.swift
//  Views
//
//  Created by mac_os on 23/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import UIKit

class CodeConfirmViewController: UIViewController {

    @IBOutlet var code: UITextField!
    @IBOutlet var conformCode: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ConformButton(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Home")
            else {
                print("Home (HomeViewController) not found")
                return}
        navigationController?.pushViewController(vc, animated: true)
        let alert = UIAlertController(title: "", message: "تم تسجيلك بنجاح", preferredStyle: .alert )
        alert.addAction(UIAlertAction (title: "OK", style: .default, handler: { _ in
            return
        }))
        self.present(alert, animated: true, completion: nil)
        return
    }
    
}
