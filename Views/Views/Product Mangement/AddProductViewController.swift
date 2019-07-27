//
//  AddProductViewController.swift
//  Views
//
//  Created by mac_os on 24/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import UIKit

class AddProductViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource,
UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    /*
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        <#code#>
    }
    */
    
    let array = ["Best Product","New Product"]
    
    @IBOutlet var name: UITextField!
    @IBOutlet var category: UITextField!
    @IBOutlet var price: UITextField!
    @IBOutlet var image: UIButton!
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var addProduct: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func AddImageButton(_ sender: Any) {

    }
    
    @IBAction func addProduct(_ sender: Any) {
    }
    
}
