//
//  ViewController.swift
//  RotateImage
//
//  Created by Steven Petteruti on 3/28/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var imageView: UIImageView!
    
    @IBAction func rotate90button(_ sender: Any) {
       imageView.transform = imageView.transform.rotated(by: CGFloat(Double.pi / 2)) //90 degree
    }
    @IBAction func rotate45button(_ sender: Any) {
       imageView.transform = imageView.transform.rotated(by: CGFloat(Double.pi / 4)) // 45 degree
    }
    @IBAction func startspinbutton(_ sender: Any) {
       imageView.transform = imageView.transform.rotated(by: CGFloat(Double.pi / 4)) // 45 degree
    }
}

