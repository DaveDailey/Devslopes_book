//
//  ViewController.swift
//  InAppPurchases
//
//  Created by DAVID DAILEY on 1/17/17.
//  Copyright © 2017 davedailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let products = ["teir 1", "teir 2", "teir 3", "teir 4", "teir 5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectoinView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //makes the cells look good on any screen
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "purchaseCell", for: indexPath) as? PurchaseCell {cell.configureCell(imageName: products[indexPath.row])
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.bounds.size.width/2 - 20, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //this gets what called when cell is tapped
        //do this later
    }

}

