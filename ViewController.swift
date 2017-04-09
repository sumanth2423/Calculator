//
//  ViewController.swift
//  Calculator
//
//  Created by sumanth pasupuleti on 4/9/17.
//  Copyright © 2017 sumaec2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInMiddleofTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        
        if userIsInMiddleofTyping {
            
            let textCurrentInDisplay = display.text!
            display.text = textCurrentInDisplay + digit
        } else {
            display.text = digit
            userIsInMiddleofTyping = true;
        }
    }
    
    var displayValue : Double {
        get{
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInMiddleofTyping = false
        
        if let mathematicalSymbol = sender.currentTitle{
            switch mathematicalSymbol {
            case "π":
                displayValue = Double.pi
            case "sq":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
}
