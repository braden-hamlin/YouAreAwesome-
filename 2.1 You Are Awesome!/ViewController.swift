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
    
    // Code below executes when app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }


    @IBAction func showMessagePressed(_ sender: UIButton) {
     messageLabel.text = "You Are Awesome!"
    }
}

