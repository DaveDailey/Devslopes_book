//
//  PurchaseCell.swift
//  InAppPurchases
//
//  Created by DAVID DAILEY on 1/17/17.
//  Copyright © 2017 davedailey. All rights reserved.
//

import UIKit

class PurchaseCell: UICollectionViewCell {
    @IBOutlet weak var purchaseImage: UIImageView!
    @IBOutlet weak var purchaseLbl: UILabel!
    
    func configureCell (imageName: String) {
        switch imageName {
        case "teir 1":purchaseImage.image = UIImage(named: "Arcade-1")
            purchaseLbl.text = "$2,500"
            break
        case "teir 2":purchaseImage.image = UIImage(named: "Arcade-2")
        purchaseLbl.text = "$5,000"
            break
        case "teir 3":purchaseImage.image = UIImage(named: "Arcade-3")
        purchaseLbl.text = "$10,000"
            break
        case "teir 4":purchaseImage.image = UIImage(named: "Arcade-4")
        purchaseLbl.text = "$25,000"
            break
        case "teir 5":purchaseImage.image = UIImage(named: "Bear-1")
        purchaseLbl.text = "$50,000"
            break
        default:
            break
        }
    }
    
}
