//
//  CalculatorViewInput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

protocol CalculatorViewInput: class {

    /// Init view
    func setupInitialState()
    
    /// Set text to display
    ///
    /// - Parameter text: digits to display
    func setTextToDigitsLabel(_ text: String)
    
    /// Clear all digits from screen
    func clearPressedOperationButton()
    
}
