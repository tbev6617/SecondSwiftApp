//
//  NeatScreenController.swift
//  SecondSwiftApp
//
//  Created by Bevan, Tyler on 10/18/17.
//  Copyright © 2017 Bevan, Tyler. All rights reserved.
//

import UIKit
import AVFoundation

class NeatScreenController: UIViewController
{
    
    
    private var imageCounter = 0;
    
    @IBOutlet weak var illusionImage: UIImageView!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var playPauseButton: UIButton!
    
    @IBOutlet weak var volumeSlider: UISlider!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func imageCycle(_ sender: Any)
    {
        switchImage()
    }
    
    private func switchImage() -> Void
    {
        if (imageCounter > 2)
        {
            imageCounter = 0;
        }
        if(imageCounter == 0)
        {
            illusionImage.image = UIImage(named: "Spooky Wormhole optical illusion")
        }
        else if(imageCounter == 1)
        {
            illusionImage.image = UIImage(named: "tiger stripes illusion")
        }
        else if(imageCounter == 2)
        {
            illusionImage.image = UIImage(named: "Neat circle optical illusion")
        }
        imageCounter += 1
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
