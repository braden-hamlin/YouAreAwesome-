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

    @IBOutlet weak var soundSwitch: UISwitch!
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
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer){
        //can we load in file soundName
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                // if sound.data is not a valid audio file.
                print("ERROR: data in \(sound)")
            }
        } else {
            // if reading in the NSDataAsset didn't work, Tell the user / report the error
            print("ERROR: file \(soundName) didn't load")
        }
    }
    
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn == false && soundIndex != -1{
               awesomePlayer.stop()
        }
        
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
       
        let messages = ["You are Awesome!",
                        "You are Great",
                        "You are Amazing!",
                        "You are Fantastic!",
                        "You Brighten my day",
                        "You are so Cool"]
        

        // show message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count )
        messageLabel.text = messages[index]
        
        //show image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
   
        //if soundSwitch.isOn == true{
        if soundSwitch.isOn {
            
            //Get a random number to use in our sound file
            soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
            
            let soundName =  "sound\(soundIndex)"
            
          playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
       
        
    }
}

 
