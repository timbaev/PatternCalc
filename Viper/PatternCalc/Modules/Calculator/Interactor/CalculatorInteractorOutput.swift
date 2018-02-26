//
//  CalculatorInteractorOutput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

import Foundation

protocol CalculatorInteractorOutput: class {

    //finish calculating success
    func didFinishCalculationSuccess(with result: Double)
    
    //finish calculation failure
    func didFinishCalculationFailure(with error: CalculatorError)
    
    //finish prepared string
    func didFinishPrepareString(with resultString: String)
    
}
