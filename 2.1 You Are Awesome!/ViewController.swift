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
    @IBOutlet weak var awesomeImageView: UIImageView!
    var index = -1
    var imageIndex = -1
    let numberOfImages = 10
    
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
        
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        repeat {
        newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
    }
    
}

