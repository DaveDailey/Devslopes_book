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
        DataService.instance.loadPosts()
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.onPostsLoaded(_:)), name: NSNotification.Name(rawValue: "postsLoaded"), object: nil)
    }

//By making this function fluid we are saying for each cell that we can see run this function. cell.configureCell is the function we declare in PostCell.swift to ident the formating. We are able to access it because we are casting constant cell as PostCell giving it the function. withIdentifier is providing a string name for any cell that is not on screen to be reused.
    func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        let post = DataService.instance.loadedPosts[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        }
        
        return PostCell()
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.loadedPosts.count
    }
    
    func onPostsLoaded(_ notif: AnyObject) {
        tableView.reloadData()
    }


}

