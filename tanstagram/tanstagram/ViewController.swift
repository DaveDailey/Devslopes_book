//
//  ViewController.swift
//  tanstagram
//
//  Created by DAVID DAILEY on 1/1/17.
//  Copyright © 2017 davedailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet var images: [UIImageView]!
    @IBOutlet weak var savePhotoButton: UIImageView!
    
    func pinchGesture (imageView: UIImageView) -> UIPinchGestureRecognizer {
        return UIPinchGestureRecognizer(target: self, action: #selector(ViewController.handlePinch))
    }
    func panGesuture (imageView: UIImageView) -> UIPanGestureRecognizer{
        return UIPanGestureRecognizer(target: self, action: #selector(ViewController.handlePan))
    }
    func rotateGesture (imageView: UIImageView) -> UIRotationGestureRecognizer {
        return UIRotationGestureRecognizer(target: self, action: #selector(ViewController.handleRotation))
    }
    
    func handlePinch(sender:UIPinchGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform)!.scaledBy(x:sender.scale, y: sender.scale)
        sender.scale = 1
    }
    func handlePan(sender:UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        if let view = sender.view {
            view.center = CGPoint(x:view.center.x +  translation.x, y: view.center.y + translation.y)
        }
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    func handleRotation(sender: UIRotationGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform)!.rotated(by: sender.rotation)
        sender.rotation = 0
    }
    
    func createGesture() {
        for shape in images {
            let pinch = pinchGesture(imageView: shape)
            let pan = panGesuture(imageView: shape)
            let rotate = rotateGesture(imageView: shape)
            shape.addGestureRecognizer(pinch)
            shape.addGestureRecognizer(pan)
            shape.addGestureRecognizer(rotate)
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGesture()
    }
    
    @IBAction func saveToPhotosTapGesture(_ sender: UITapGestureRecognizer) {
        renderImage()
    }
    
    func image (_ image: UIImage, didFinishSavingWithError error:Error?, contextInfo: UnsafeRawPointer){
        if let error = error {
            //we got back an error
            let alert = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default))
            present(alert, animated:true)
        } else {
            let alert = UIAlertController(title: "Saved!", message: "Your image has been saved to your photos.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style:.default))
            present(alert, animated:true)
        }
    }

    func renderImage() {
        let renderer = UIGraphicsImageRenderer(size: view.bounds.size)
        let image = renderer.image {(goTo) in
            view.drawHierarchy(in:view.bounds, afterScreenUpdates: true)
        }
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(ViewController.image(_:didFinishSavingWithError:contextInfo:)), nil)
    }
  
    
}

