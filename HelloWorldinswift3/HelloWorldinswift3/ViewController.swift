//
//  ViewController.swift
//  HelloWorldinswift3
//
//  Created by DAVID DAILEY on 12/12/16.
//  Copyright © 2016 davedailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var welcomeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showImages(_ sender: Any) {
        backgroundImage.isHidden = false
        titleImage.isHidden = false
        welcomeBtn.isHidden = true
    }
}

