//
//  ViewController.swift
//  calculator
//
//  Created by Jamie on 2020/08/15.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    
    private var displayValue: Double {
        get {
            if let currentDisplayValue = Double(displayLabel.text!) {
                return currentDisplayValue
            } else {
                fatalError("what?")
            }
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
        
    //var storedNum: Double = 0

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        
        if let calMethod = sender.currentTitle {
            
            let calculator = Calculator(number: displayValue)
            
            guard let result = calculator.calculate(symbol: calMethod) else {
                fatalError("asgaefae")
            }
            
            displayValue = result
            
        }
        

      
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
    
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                
                displayLabel.text = numValue
                isFinishedTypingNumber = false

            } else {
                
                if numValue == "." {
                   
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                }
                
                displayLabel.text?.append(numValue)
            }
        }
    }
}

