//
//  ViewController.swift
//  Calculator
//
//  Created by Van Doan on 8/15/17.
//  Copyright © 2017 Van Doan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
 
    var isTyping: Bool = false
    @IBAction func appendDigit(_ sender: UIButton) {
            let digit = sender.currentTitle!
        if isTyping {
                display.text = display.text! + digit
        } else {
            display.text = digit
            isTyping = true
        }
        
    }

}

