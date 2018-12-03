//
//  ViewController.swift
//  RollingImage
//
//  Created by hiroshi on 2018/12/03.
//  Copyright © 2018 hiroshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let grayView = UIView(frame: self.view.frame)
        grayView.backgroundColor = UIColor.gray
        self.view.addSubview(grayView)
        
        let image = UIImage(named: "moon") // http://icooon-mono.com/11223-夜空のフリーアイコン/ より
        let imageView = UIImageView(image: image)
        imageView.center = grayView.center
        grayView.addSubview(imageView)
        
        let rollingAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rollingAnimation.fromValue = 0
        rollingAnimation.toValue = CGFloat.pi * 2.0
        
        rollingAnimation.duration = 2.0
        rollingAnimation.repeatDuration = CFTimeInterval.infinity
        imageView.layer.add(rollingAnimation, forKey: "rotateAnim")
        
    }


}

