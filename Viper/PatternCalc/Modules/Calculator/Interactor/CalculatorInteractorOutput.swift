//
//  CalculatorInteractorOutput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

import Foundation

protocol CalculatorInteractorOutput: class {

    
    /// Calculation finish success
    ///
    /// - Parameter result: calculation result
    func didFinishCalculationSuccess(with result: Double)
    
    
    /// Calculation finish failed
    ///
    /// - Parameter error: calculation result with error
    func didFinishCalculationFailure(with error: CalculatorError)
    
    
    /// Result string after preparing
    ///
    /// - Parameter resultString: prepared string
    func didFinishPrepareString(with resultString: String)
    
}
