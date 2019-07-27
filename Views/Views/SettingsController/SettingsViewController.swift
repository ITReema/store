//
//  SettingsViewController.swift
//  Views
//
//  Created by mac_os on 23/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet var customerService: UIButton!
    @IBOutlet var share: UIButton!
    @IBOutlet var contactUs: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func shareButton(_ sender: Any) {
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        let textToShare = "Check out my app"
        //Enter link to your app here
        if let myWebsite = URL(string: "http://itunes.apple.com/app/idXXXXXXXXX") {
            let objectsToShare = [textToShare, myWebsite, image ?? #imageLiteral(resourceName: "person")] as [Any]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            //Excluded Activities
            activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.addToReadingList]
            activityVC.popoverPresentationController?.sourceView = sender as? UIView
            self.present(activityVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func serviceButton(_ sender: Any) {
        let myUrl = "http://www.aldekhel.sa/store/index.php?route=information/contact"
        UIApplication.shared.open(URL(string: "\(myUrl)")!)
    }
    
    @IBAction func contactButton(_ sender: Any) {
        dialNumber(number: "+966551084440")
       
    }
    
    func dialNumber(number : String) {
        if let url = URL(string: "tel://\(number)"),
            UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url, options: [:], completionHandler:nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    
}

