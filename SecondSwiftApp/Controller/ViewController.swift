//
//  ViewController.swift
//  SecondSwiftApp
//
//  Created by Bevan, Tyler on 10/10/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var colorTool : ColorTools = ColorTools()
    
    @IBOutlet weak var ColorButton: UIButton!
    @IBOutlet weak var clickLabel: UITextField!
    @IBOutlet weak var nextScreenButton: UIButton!
    var timesClicked = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func colorChangeMethod(_ sender: UIButton)
    {
        ColorButton.backgroundColor = colorTool.makeRandomColor()
        ColorButton.setTitleColor(.white, for : .normal)
        view.backgroundColor = colorTool.makeRandomColor()
        changeLabel()
    }
    
    private func changeLabel()
    {
        timesClicked += 1
        clickLabel.text = "You have clicked \(timesClicked) times"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

