//
//  DetailsProductsViewController.swift
//  Views
//
//  Created by mac_os on 24/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import UIKit

class DetailsProductsViewController: UIViewController {


    @IBOutlet var imageView: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var detailLabel: UILabel!
    @IBOutlet var buy: UIButton!
    
    var nameImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: nameImage)
        name.text = nameImage
    }

}
