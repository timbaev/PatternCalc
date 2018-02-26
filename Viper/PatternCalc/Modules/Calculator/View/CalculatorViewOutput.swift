//
//  CalculatorViewOutput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

protocol CalculatorViewOutput {

    //call, when view prepared and ready to show (viewDidLoad)
    func viewIsReady()
    
    //comma button click
    func onCommaButtonClick(with digitsLabelText: String)
    
    //number button click
    func onNumberButtonClick(with title: String, and digitsLabelText: String)
    
    //operations button click
    func onOperationButtonClick(with operationTitle: String, and digitsLabelText: String)
    
    //single operation button click
    func onSingleOperationButtonClick(with operationTitle: String, and digitsLabelText: String)
    
    //clear button click, reset operations
    func onClearButtonClick()
    
    //equal button click, perform calculating
    func onEqualButtonClick(with digitsLabelText: String)
    
}
