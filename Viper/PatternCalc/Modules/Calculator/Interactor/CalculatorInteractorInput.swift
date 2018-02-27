//
//  CalculatorInteractorInput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

import Foundation

protocol CalculatorInteractorInput {
    
    /// Calculate two numbers
    ///
    /// - Parameters:
    ///   - operation: calculate with operation
    ///   - firstNumber: first number to calculate
    ///   - secondNumber: second number to calculate
    func perform(with operation: Operations, _ firstNumber: Double, _ secondNumber: Double)
    
    /// Calculate with one number
    ///
    /// - Parameters:
    ///   - operation: operation to number
    ///   - number: number to operate
    func perform(with operation: SingleOperations, and number: Double)
    
    
    /// Formatting string for view with comma
    ///
    /// - Parameter number: number to format
    func formatString(from number: Double)

}
