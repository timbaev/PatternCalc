//
//  CalculatorViewOutput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

protocol CalculatorViewOutput {

    /// Call, when view prepared and ready to show (viewDidLoad)
    func viewIsReady()
    
    /// Comma button click
    ///
    /// - Parameter digitsLabelText: current displaying text on screen
    func onCommaButtonClick(with digitsLabelText: String)

    /// Number button click
    ///
    /// - Parameters:
    ///   - title: button number title
    ///   - digitsLabelText: current displaying text on screen
    func onNumberButtonClick(with title: String, and digitsLabelText: String)
    
    /// Operations button click
    ///
    /// - Parameters:
    ///   - operationTitle: operation button title
    ///   - digitsLabelText: current displaying text on screen
    func onOperationButtonClick(with operationTitle: String, and digitsLabelText: String)
    
    /// Single operation button click
    ///
    /// - Parameters:
    ///   - operationTitle: operation button title
    ///   - digitsLabelText: current displaying text on screen
    func onSingleOperationButtonClick(with operationTitle: String, and digitsLabelText: String)
    
    /// Clear button click, reset operations
    func onClearButtonClick()
    
    /// Equal button click, perform calculating
    ///
    /// - Parameter digitsLabelText: current displaying text on screen
    func onEqualButtonClick(with digitsLabelText: String)
    
}
