//
//  ViewController.swift
//  CAGradientLayer
//
//  Created by Mohamed on 9/29/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        
        let emptyView = UIView()
        
        emptyView.frame.size = CGSize(width: 200, height: 200)
        emptyView.center = view.center
        view.addSubview(emptyView)
        
        
        let gradient = CAGradientLayer(layer: emptyView.layer)
        gradient.colors = [UIColor.red.cgColor , UIColor.blue.cgColor , UIColor.yellow.cgColor , UIColor.black.cgColor]

        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        gradient.frame = emptyView.bounds
        //gradient.transform = CATransform3DMakeRotation(CGFloat.pi / 2, 0, 0, 1)
        gradient.locations = [0 , 0.4]
        emptyView.layer.insertSublayer(gradient , at: 0)
        
        let animation = CABasicAnimation(keyPath: "location")
        
        animation.fromValue = [0 , 0.4]
        animation.toValue = [0 , 2.5]
        animation.repeatCount = Float.infinity
        animation.autoreverses = true
        gradient.add(animation, forKey: nil)
        
    }


}

