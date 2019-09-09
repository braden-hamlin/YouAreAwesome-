//
//  ViewController.swift
//  2.1 You Are Awesome!
//
//  Created by Braden Hamlin on 8/27/19.
//  Copyright © 2019 Braden Hamlin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImageView: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
       
        let messages = ["You are Awesome!",
                        "You are Great",
                        "You are Amazing!",
                        "You are Fantastic!",
                        "You Brighten my day",
                        "You are so Cool"]
        
        var newIndex: Int //declares but doesn't initialize newIndex  
        // show message
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        //show image
        repeat {
        newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //Get a random number to use in our sound file
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        //play sound
        var soundName = "sound\(soundIndex )"
        
        //can we load in file soundName
        
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            do {
            try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
                
            } catch {
                // if sound.data is not a valid audio file.
                print("ERROR: data in \(sound)")
                
            }
        } else {
            // if reading in the NSDataAsset didn't work, Tell the user / report the error
            print("ERROR: file \(soundName) didn't load")
            
        }
    }
    
    
}

