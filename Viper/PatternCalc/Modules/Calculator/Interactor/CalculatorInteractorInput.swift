//
//  CalculatorInteractorInput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

import Foundation

protocol CalculatorInteractorInput {
    
    //calculate two numbers with operation
    func perform(with operation: Operations, _ firstNumber: Double, _ secondNumber: Double)
    
    //calculate single number with operation
    func perform(with operation: SingleOperations, and number: Double)
    
    //formatting string from double value
    func formatString(from number: Double)

}
