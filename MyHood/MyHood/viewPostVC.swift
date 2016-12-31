//
//  viewPostVC.swift
//  MyHood
//
//  Created by DAVID DAILEY on 12/30/16.
//  Copyright © 2016 davedailey. All rights reserved.
//

import UIKit

class viewPostVC: UIViewController{
    
    @IBOutlet weak var _userImage: UIImageView!
    @IBOutlet weak var _userTitle: UILabel!
    @IBOutlet weak var _userDesc: UILabel!
    
    var postToView: Post!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        _userImage.layer.cornerRadius = 20
        _userImage.image = DataService.instance.imageForPath(postToView.imagePath)
        _userTitle.text = postToView.title
        _userDesc.text = postToView.postDesc
        _userDesc.sizeToFit()
    }
    
    @IBAction func backBtn (_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}



