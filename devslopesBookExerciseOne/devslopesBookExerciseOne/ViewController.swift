//
//  ViewController.swift
//  devslopesBookExerciseOne
//
//  Created by DAVID DAILEY on 12/12/16.
//  Copyright © 2016 davedailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pandaImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func showPanda(_ sender: Any) {
        pandaImage.isHidden = false
    }

    @IBAction func hidePanda(_ sender: Any) {
        pandaImage.isHidden = true
    }
}

