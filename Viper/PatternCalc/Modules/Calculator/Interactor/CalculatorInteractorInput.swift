//
//  CalculatorInteractorInput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

import Foundation

protocol CalculatorInteractorInput {
    
    func perform(with operation: Operations, _ firstNumber: Double, _ secondNumber: Double)
    func perform(with operation: SingleOperations, and number: Double)

}
