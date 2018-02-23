//
//  CalculatorViewOutput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

protocol CalculatorViewOutput {

    func viewIsReady()
    func onCommaButtonClick(with digitsLabelText: String)
    func onNumberButtonClick(with title: String, and digitsLabelText: String)
    func onOperationButtonClick(with operationTitle: String, and digitsLabelText: String)
    func onSingleOperationButtonClick(with operationTitle: String, and digitsLabelText: String)
    func onClearButtonClick()
    func onEqualButtonClick(with digitsLabelText: String)
    
}
