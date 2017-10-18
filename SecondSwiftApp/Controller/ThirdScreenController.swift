//
//  ThirdScreenController.swift
//  SecondSwiftApp
//
//  Created by Bevan, Tyler on 10/16/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit

class ThirdScreenController: UIViewController
{
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    lazy var colorTool : ColorTools = ColorTools()
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.makeRandomColor()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()

    }

    



}
