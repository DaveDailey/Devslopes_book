//
//  ViewController.swift
//  PageTheScroll
//
//  Created by DAVID DAILEY on 12/16/16.
//  Copyright © 2016 davedailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var icons = [UIImageView]()
    var skys = [UIImageView]()
    var suns = [UIImageView]()
    var contentWidth: CGFloat = 0.0
    @IBOutlet weak var scrollView1: UIScrollView!
    //@IBOutlet weak var scrollView2: UIScrollView!
    //@IBOutlet weak var scrollView3: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for x in 0...2{
            let background = UIImage(named: "sky\(x)")
            let imageViewBackground = UIImageView(image: background)
            skys.append(imageViewBackground)
            var mobileOrigin: CGFloat = 0.0
            mobileOrigin = view.frame.size.width * CGFloat(x)
            scrollView1.addSubview(imageViewBackground)
            imageViewBackground.frame = CGRect(x:mobileOrigin,y:0,width:view.frame.size.width,height:view.frame.size.height)
            }
        
        //icons
        //for x in 0...2 {
          //  let image = UIImage(named: "icon\(x).png")
            //let imageView = UIImageView(image: image)
            //icons.append(imageView)
            //var newX: CGFloat = 0.0
            //newX = view.frame.midX + view.frame.size.width * CGFloat(x)
            //contentWidth += newX
            //scrollView2.addSubview(imageView)
            //imageView.frame = CGRect(x:newX-75, y:(view.frame.size.height/2)-75, width:150, height:150)
            //}
        
        //suns
        //for x in 0...2 {
            //let sphere = UIImage(named: "sun\(x)")
            //let imageViewSun = UIImageView(image: sphere)
            //suns.append(imageViewSun)
            //var moveTheSun: CGFloat = 0.0
            //moveTheSun = view.frame.size.width * CGFloat(x)
            //print(moveTheSun)
            //scrollView3.addSubview(imageViewSun)
            //imageViewSun.frame = CGRect(x: moveTheSun, y:20, width:100, height:100)
       // }
        
            scrollView1.contentSize = CGSize(width:contentWidth, height: view.frame.size.height)
            //scrollView2.contentSize = CGSize(width:contentWidth, height: view.frame.size.height)
            //scrollView3.contentSize = CGSize(width:contentWidth, height: view.frame.size.height)
    }
}


