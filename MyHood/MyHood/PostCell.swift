//
//  PostCell.swift
//  MyHood
//
//  Created by DAVID DAILEY on 12/19/16.
//  Copyright © 2016 davedailey. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(_ post:Post){
        titleLbl.text = post.title
        descLbl.text = post.postDesc
    }
    

    

}
