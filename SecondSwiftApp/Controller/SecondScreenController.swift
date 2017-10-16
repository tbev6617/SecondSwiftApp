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
    
    lazy var colorTool :ColorTools = ColorTools()
    @IBOutlet weak var backScreenButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.makeRandomColor()
    }
}
