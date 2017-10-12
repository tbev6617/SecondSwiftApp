//
//  ViewController.swift
//  SecondSwiftApp
//
//  Created by Bevan, Tyler on 10/10/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    var timesClicked : Int
//    public init ()
//    {
//        timesClicked = 0;
//    }
    var timesClicked = 0;
    @IBOutlet weak var ColorButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func colorChangeMethod(_ sender: UIButton)
    {
        ColorButton.backgroundColor = randomColor()
        ColorButton.setTitleColor(.white, for : .normal)
        view.backgroundColor = randomColor()
        changeLabel()
    }
    @IBOutlet weak var clickLabel: UITextField!
    private func changeLabel()
    {
        timesClicked += 1
        clickLabel.text = "You have clicked \(timesClicked) times"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func randomColor() -> UIColor
    {
        let blueAmount = CGFloat (Double (arc4random_uniform(256)) / 255)
        let redAmount = CGFloat (Double (arc4random_uniform(256)) / 255)
        let greenAmount = CGFloat (Double (arc4random_uniform(256)) / 255)
        return UIColor(red : redAmount, green : greenAmount, blue : blueAmount, alpha : CGFloat(1.0))
    }

}

