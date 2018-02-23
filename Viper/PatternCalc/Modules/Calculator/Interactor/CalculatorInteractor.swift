//
//  CalculatorInteractor.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

class CalculatorInteractor: CalculatorInteractorInput {

    weak var presenter: CalculatorInteractorOutput!
    
    func perform(with operation: Operations, _ firstNumber: Double, _ secondNumber: Double) {
        var result: Double?
        
        switch operation {
        case .devide: result = firstNumber / secondNumber
        case .minus: result =  firstNumber - secondNumber
        case .multiply: result = firstNumber * secondNumber
        case .plus: result = firstNumber + secondNumber
        }
        
        presenter.calculateResult(result)
    }
    
    func perform(with operation: SingleOperations, and number: Double) {
        var result: Double?
        
        switch operation {
        case .percent: result = number / 100
        case .power: result = number * number
        }
    
        presenter.calculateResult(result)
    }

}
