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
 
    var userIsTyping: Bool = false
    @IBAction func appendDigit(_ sender: UIButton) {
            let digit = sender.currentTitle!
        if userIsTyping {
                display.text = display.text! + digit
        } else {
            display.text = digit
            userIsTyping = true
        }
        
    }
    
    @IBAction func operate(_ sender: UIButton) {
        let operation = sender.currentTitle!
        
        if userIsTyping {
            enter()
        }
        
        switch operation {
        case "×": performOperation { $0 * $1 }
        case "+": performOperation { $0 + $1 }
        case "−": performOperation { $1 - $0 }
        case "∕": performOperation { $1 / $0 }
        case "√": performOperation2 { sqrt($0) }
        default: break
        }
    }
    
    func performOperation(operation: (Double, Double) -> Double){
        if operandStack.count > 2 {
            displayValue = operation(operandStack.removeLast(), operandStack.removeLast())
            enter()
        }
    }

    func performOperation2(operation: (Double) -> Double){
        if operandStack.count > 1 {
            displayValue = operation(operandStack.removeLast())
            enter()
        }
    }

    var operandStack: [Double] = []
    
    @IBAction func enter() {
        userIsTyping = false
        operandStack.append(displayValue)
        print("operandStack: \(operandStack)")
    }
    
    var displayValue: Double {
        get { // get value from display
            return NumberFormatter().number(from: display.text!)!.doubleValue
        }
        set { // turn into string
            display.text = "\(newValue)"
            userIsTyping = false
        }
    }
    

}

