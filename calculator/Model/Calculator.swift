//
//  Calculator.swift
//  calculator
//
//  Created by Jamie on 2020/08/15.
//  Copyright © 2020 Jamie. All rights reserved.
//

import Foundation
//import UIKit

class Calculator {
    
    var number: Double
   // var label: String
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        
        
        if symbol == "+/-" {
            
            return number * -1
            
        } else if symbol == "AC" {
            
            return 0
            
        } else if symbol == "%" {
            
            return number * 0.01
        }
        return nil
    }
}


