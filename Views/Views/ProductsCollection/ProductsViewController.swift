//
//  ProductsViewController.swift
//  Views
//
//  Created by mac_os on 24/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController {

    @IBOutlet var CollectionView: UICollectionView!
    
    var product = [Products]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CollectionView.dataSource = self
        CollectionView.delegate = self
        
        product = Products.fetchData()
        CollectionView.reloadData()
    }
    

}
    // MARK: - Navigation

extension ProductsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? ProductsCollectionViewCell
        
        //Border and Radius
        cell?.contentView.layer.cornerRadius = 2.0
        cell?.contentView.layer.borderWidth = 1.0
        cell?.contentView.layer.borderColor = UIColor.clear.cgColor
        cell?.contentView.layer.masksToBounds = true
        cell?.layer.shadowColor = UIColor.lightGray.cgColor
        cell?.layer.shadowOffset = CGSize(width:0,height: 2.0)
        cell?.layer.shadowRadius = 2.0
        cell?.layer.shadowOpacity = 1.0
        cell?.layer.masksToBounds = false;
        cell?.layer.shadowPath = UIBezierPath(roundedRect:(cell?.bounds)!, cornerRadius:(cell?.contentView.layer.cornerRadius)!).cgPath
        
        
        cell?.labelView.text = product[indexPath.row].name
        cell?.imageView.image = product[indexPath.row].image
    
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailsProductsViewController
        vc?.nameImage = product[indexPath.row].name!
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

extension ProductsViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        return CGSize(width: (bounds.width - 20)/2, height: bounds.height/3)
    }
}



