//
//  CalculatorViewInput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

protocol CalculatorViewInput: class {

    func setupInitialState()
    func setTextToDigitsLabel(_ text: String)
    func showErrorAlert(with message: String)
    func clearPressedOperationButton()
    
}
