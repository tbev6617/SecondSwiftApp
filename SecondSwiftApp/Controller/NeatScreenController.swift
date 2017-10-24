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
    private var imageCounter = 0
    private var soundPlayer : AVAudioPlayer?
    private lazy var colorTool : ColorTools = ColorTools()
    
    @IBOutlet weak var illusionImage: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var volumeSlider: UISlider!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        loadAudioFile()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
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
    
    @IBAction func soundPlay(_ sender: Any)
    {
        playMusicFile()
    }
    
    private func playMusicFile() -> Void
    {
        if let isPlaying = soundPlayer?.isPlaying
        {
            if(isPlaying)
            {
                soundPlayer?.pause()
            }
            else
            {
                soundPlayer?.play()
            }
        }
    }
    
    private func loadAudioFile()
    {
        if let soundURL = NSDataAsset(name: "smb_mariodie")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                volumeSlider.maximumValue = Float ((soundPlayer?.duration)!)
                Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo:nil, repeats: true)
            }
            catch
            {
                print("AUDIO FILE LOAD ERROR")
            }
        }
    }
    @objc private func updateSlider() -> Void
    {
        volumeSlider.value = Float ((soundPlayer?.currentTime)!)
    }
    @IBAction func slidingSound(_ sender: UISlider)
    {
        let seekTime = Double (volumeSlider.value)
        soundPlayer?.currentTime = seekTime
    }
    
}
