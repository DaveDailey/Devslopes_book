//
//  ViewController.swift
//  MyHood
//
//  Created by DAVID DAILEY on 12/18/16.
//  Copyright © 2016 davedailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    
    func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection: Int) -> Int {
        return 10
    }
    


}

