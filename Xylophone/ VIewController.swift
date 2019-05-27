//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        print("Note \(sender.tag) pressed")
        let note = "note\(sender.tag)"
        let sound = Bundle.main.url(forResource: note, withExtension: "wav")!
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: sound)
            guard let audioPlayer = audioPlayer else {return}
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }catch let error as Error {
                print(error)
            }
        }
        
        
    
}
    
  



