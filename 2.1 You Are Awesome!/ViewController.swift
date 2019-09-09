//
//  ViewController.swift
//  2.1 You Are Awesome!
//
//  Created by Braden Hamlin on 8/27/19.
//  Copyright © 2019 Braden Hamlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    
    // Code below executes when app's view first loads
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
        
        //var newIndex = -1
        var newIndex: Int //declares but doesn't initialize newIndex 
        
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        
//
//        if index == messages.count - 1 {
//            index = 0
//        } else {
//            index = index + 1
//        }
        
        
        
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
        
        
    }
    
    
}

