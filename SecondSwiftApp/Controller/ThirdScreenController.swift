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
    
    lazy var colorTool : ColorTools = ColorTools()
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = colorTool.makeRandomColor()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
