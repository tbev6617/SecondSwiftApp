//
//  SecondScreenController.swift
//  SecondSwiftApp
//
//  Created by Bevan, Tyler on 10/12/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit

class SecondScreenController : UIViewController
{
    @IBOutlet weak var colorButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backScreenButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .green
        colorButton.backgroundColor = .red
    }
    
    @IBAction func christmasSwitch(_ sender: Any)
    {
        let tempColor : UIColor = colorButton.backgroundColor!
        colorButton.backgroundColor = view.backgroundColor
        view.backgroundColor = tempColor
    }
}
