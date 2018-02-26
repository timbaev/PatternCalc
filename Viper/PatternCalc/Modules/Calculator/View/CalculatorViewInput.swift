//
//  CalculatorViewInput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

protocol CalculatorViewInput: class {

    //init view
    func setupInitialState()
    
    //set text to display with digits
    func setTextToDigitsLabel(_ text: String)
    
    //clear all digits from screen
    func clearPressedOperationButton()
    
}
