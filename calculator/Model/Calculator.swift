//
//  Calculator.swift
//  calculator
//
//  Created by Jamie on 2020/08/15.
//  Copyright © 2020 Jamie. All rights reserved.
//

import Foundation
//import UIKit

struct Calculator {
    
    private var number: Double?
    // var label: String
    
    private var intermidiateCalc: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            
            switch symbol {
                
            case "+/-" :
                return n * -1
                
            case "AC" :
                return 0
                
            case "%" :
                return n * 0.01
                
            case "=" :
                return performTwoNumCalc(n2: n)
                
            default :
                intermidiateCalc = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func performTwoNumCalc(n2: Double) -> Double? {
        
        if let n1 = intermidiateCalc?.n1,
            let operation = intermidiateCalc?.calcMethod {
            
            switch operation {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "x":
                return n1 * n2
            case "÷":
                return n1 / n2
            default:
                fatalError()
            }
            
        }
        return nil
    }
}


