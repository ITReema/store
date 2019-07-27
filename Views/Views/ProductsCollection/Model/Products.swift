//
//  Products.swift
//  Views
//
//  Created by mac_os on 24/11/1440 AH.
//  Copyright © 1440 mac_os. All rights reserved.
//

import Foundation
import UIKit

class Products {
    var name: String?
    var image: UIImage
    var price: Int?
    var description: String?
    
    
    init(name: String, image: UIImage, price: Int, description: String)
    {
        
        self.name = name
        self.image = image
        self.price = price
        self.description = description
    }
    
    class func fetchData() -> [Products] {
        var product = [Products]()
        
        // 1
        let product1 = Products(name: "فناجيل قهوة ", image: UIImage(named: "فناجيل قهوة")!,price: 175, description: " يحتوي على 6 اكواب، غطاء لكل كوب")
        product.append(product1)
        
        //2
        let product2 = Products(name: "طقم ترامس ردسي", image: UIImage(named: "طقم ترامس ردسي")!, price: 124, description: "مصنعة من مواد ذات جودة عالية، مضمونة من المصنع")
        product.append(product2)
        
        //3
        let product3 = Products(name: "عجانة هوست", image: UIImage(named: "عجانة هوست")!, price: 302, description: "عجانة هوست وسط سعة 5 لتر لون سيلفر ضمان سنتين")
        product.append(product3)
        
        //4
        let product4 = Products(name: "طقم شوربة سيراميك", image: UIImage(named:  "طقم شوربة")!, price: 168, description: "طقم شوربة سيراميك 16 قطعة")
        product.append(product4)
        
        //5
        let product5 = Products(name: "قدور ستانلس ستيل", image: UIImage(named: "قدور ستانلس ستيل")!, price: 309, description: "طقم قدور ستانلس ستيل 10 قطع")
        product.append(product5)
        
        //6
        let product6 = Products(name: "قلاية سمبوسة", image: UIImage(named: "قلاية سمبوسة")!, price: 24, description: "قلاية سمبوسة هوم ماستر")
        product.append(product6)
        
        //7
        let product7 = Products(name: "خبازة جانو", image: UIImage(named: "خبازة جانو")!, price: 208, description: "خبازة جانو")
        product.append(product7)
        
        //8
        let product8 = Products(name: "علب بهارات", image: UIImage(named: "علب بهارات")!, price: 96, description: "طقم علب بهارات 4 حبات قزاز ومن الخارج استيل مع استاند استيل")
        product.append(product8)
        
        return product
    }
}
