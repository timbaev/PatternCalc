//
//  CalculatorManagerProtocol.swift
//  PatternCalc
//
//  Created by Тимур Шафигуллин on 24.02.18.
//  Copyright © 2018 iOSMobileLab. All rights reserved.
//

import Foundation

protocol CalculatorManagerProtocol: class {
    
    func perform(with operation: Operations, _ firstNumber: Double, _ secondNumber: Double) -> Double?
    func perform(with operation: SingleOperations, and number: Double) -> Double?
    
}
