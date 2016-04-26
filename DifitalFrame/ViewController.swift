//
//  ViewController.swift
//  DifitalFrame
//
//  Created by scott.jun on 2016. 4. 26..
//  Copyright © 2016년 Jsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imgView:UIImageView!
    @IBOutlet var toggleBtn:UIButton!
    @IBOutlet var speedSlider:UISlider!
    @IBOutlet var speedLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [UIImage(named: "1.jpg")!,
                          UIImage(named: "2.jpg")!,
                          UIImage(named: "3.jpg")!,
                          UIImage(named: "4.jpg")!,
                          UIImage(named: "5.jpg")!,
                          UIImage(named: "6.jpg")!,
                          UIImage(named: "7.jpg")!,
                          UIImage(named: "8.jpg")!,
                          UIImage(named: "9.jpg")!,
                          UIImage(named: "10.jpg")!,
                          UIImage(named: "11.jpg")!,
                          UIImage(named: "12.jpg")!,
                          UIImage(named: "13.jpg")!,
                          UIImage(named: "14.jpg")!,
                          UIImage(named: "15.jpg")!]
        imgView.animationImages = cuteImages
        imgView.animationDuration = 15.0
        imgView.startAnimating()
        toggleBtn.setTitle("Stop", forState: UIControlState.Normal)
    }
    
    @IBAction func toggleAction(sender:AnyObject){
        if imgView.isAnimating() {
            imgView.stopAnimating()
            toggleBtn.setTitle("Start", forState: UIControlState.Normal)
        } else {
            imgView.startAnimating()
            toggleBtn.setTitle("Stop", forState: UIControlState.Normal)
        }
    }
    
    @IBAction func changeSpeedAction(sender:AnyObject){
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleBtn.setTitle("Stop", forState: UIControlState.Normal)
        speedLabel.text = String(format: "%.2f", speedSlider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

