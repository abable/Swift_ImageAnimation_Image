//
//  ViewController.swift
//  ImageAnimation
//
//  Created by Seungjun Lim on 27/05/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func startAnimation(_ sender: Any) {
        imageView.startAnimating()
    }
    
    @IBAction func stopAnimation(_ sender: Any) {
        if imageView.isAnimating {
            imageView.stopAnimating()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let images = (0...3).compactMap { UIImage(named: "phone-ring\($0)")
        }
        imageView.animationImages = images
        imageView.animationDuration = 1 // 4장의 이미지가 0.25초 마다 진행됨 총 1초
        imageView.animationRepeatCount = 5
        
    }
    
    
}




