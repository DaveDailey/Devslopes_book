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
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let post = Post(imagePath:"", title: "Post 1", description: "this is post 1")
        let post2 = Post(imagePath: "", title: "Post 2", description: "this is post 2")
        let post3 = Post(imagePath: "", title: "Post 3", description: "this is post 3")
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
    }

    
    func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        }
        
        return PostCell()
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection: Int) -> Int {
        return posts.count
    }
    


}

