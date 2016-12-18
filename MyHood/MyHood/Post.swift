//
//  Post.swift
//  MyHood
//
//  Created by DAVID DAILEY on 12/18/16.
//  Copyright © 2016 davedailey. All rights reserved.
//

import Foundation


class Post {
    fileprivate var imagePath: String
    fileprivate var title: String
    fileprivate var postDesc: String
    
    init(imagePath: String, title: String, description: String) {
        self.imagePath = imagePath
        self.title = title
        self.postDesc = description
    }
    
}
