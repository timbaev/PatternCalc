//
//  CalculatorManager.swift
//  PatternCalc
//
//  Created by Тимур Шафигуллин on 24.02.18.
//  Copyright © 2018 iOSMobileLab. All rights reserved.
//

import Foundation

class CalculatorManager: CalculatorManagerProtocol {
    
    func perform(with operation: Operations, _ firstNumber: Double, _ secondNumber: Double) -> Double? {
        var result: Double?
        
        switch operation {
        case .devide: result = firstNumber / secondNumber
        case .minus: result =  firstNumber - secondNumber
        case .multiply: result = firstNumber * secondNumber
        case .plus: result = firstNumber + secondNumber
        }
        
        return result
    }
    
    func perform(with operation: SingleOperations, and number: Double) -> Double? {
        var result: Double?
        
        switch operation {
        case .percent: result = number / 100
        case .power: result = number * number
        }
        
        return result
    }
    
}
