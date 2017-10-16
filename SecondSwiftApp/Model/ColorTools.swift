//
//  ColorTools.swift
//  SecondSwiftApp
//
//  Created by Bevan, Tyler on 10/12/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit
class ColorTools
{
    public func makeRandomColor() -> UIColor
    {
        let blueAmount = CGFloat (Double (arc4random_uniform(256)) / 255)
        let redAmount = CGFloat (Double (arc4random_uniform(256)) / 255)
        let greenAmount = CGFloat (Double (arc4random_uniform(256)) / 255)
        return UIColor(red : redAmount, green : greenAmount, blue : blueAmount, alpha : CGFloat(1.0))
    }
}
