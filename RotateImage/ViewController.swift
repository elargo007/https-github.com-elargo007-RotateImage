//
//  ViewController.swift
//  RotateImage
//
//  Created by Steven Petteruti on 3/28/23.
//  Revised 5/20/23

import UIKit
var degrees_23: Double = 8 // to rotate 22.5º divide 2𝝅 radians by 8
var degrees_45: Double = 4 // to rotate 45º divide 2𝝅 radians by 4
var degrees_360: Double = 1 // to rotate 45º divide 2𝝅 radians by 1
// var imageView = UIImageView()
var duration: Double = 5 // duration for rotating logo
var image = UIImage(named: "Cramly Logo small purple.png")

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
 //   @IBOutlet var spinLogo: UIButton!
    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var CramlyLabel: UILabel!
    @IBOutlet var CramlyR: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CramlyLabel.text = "Cramly"
        CramlyLabel.font = UIFont(name: "Ananda Black", size: 30 ) // Set custom font & size
        CramlyR.text = "®"
        CramlyR.font = UIFont(name: "Ananda Black", size: 20 ) // Set custom font & size
        // Add an array of buttons after loading the view
        for button in Buttons {
            button.layer.cornerRadius = 0
        }
    }
    
    @IBAction func rotate23º(_ sender: Any) {
        imageView.transform = imageView.transform.rotated(by: CGFloat(Double.pi / degrees_23))
    }
    
    @IBAction func rotate45º(_ sender: Any) {
        imageView.transform = imageView.transform.rotated(by: CGFloat(Double.pi / degrees_45))
    }
    
    // ROTATE BUTTON - duration helps to control rotation speed
    @IBAction func rotateView(targetView: UIView, duration: Double = 5) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveLinear, animations: {
            targetView.transform = targetView.transform.rotated(by: CGFloat(Double.pi / degrees_23))
        }) { finished in
            self.rotateView(targetView: targetView, duration: duration)
        }
    }
    
    // ROTATE LOGO - duration helps to control rotation speed
    @IBAction func spinLogo(sender: UIButton) {
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear, animations: {
            self.imageView.transform = self.imageView.transform.rotated(by: CGFloat(Double.pi))
        }) { (finished) -> Void in
            self.spinLogo(sender: sender)
        }
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        // Loop 5 times and print the index value each time
        for i in 1...5 {
            sleep(1) // delay by pause
            imageView.transform = imageView.transform.rotated(by: CGFloat(Double.pi / degrees_23)) // rotate 22.5º
            print("Loop iteration \(i) after sleep ") // for debug
        }
    }
}
