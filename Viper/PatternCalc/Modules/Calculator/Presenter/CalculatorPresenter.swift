//
//  CalculatorPresenter.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

class CalculatorPresenter: CalculatorModuleInput, CalculatorViewOutput, CalculatorInteractorOutput {

    weak var view: CalculatorViewInput!
    var interactor: CalculatorInteractorInput!
    var router: CalculatorRouterInput!
    
    private let somethingWentWrongMessage = "Что-то пошло не так"
    
    private let zeroNumberText = "0"
    private let comma = ","
    
    private var waitingSecondNumber = false
    private var savedFirstNumber: Double?
    private var currentOperation: Operations?
    
    //MARK: - view output
    
    func viewIsReady() {
        view.setupInitialState()
    }
    
    func onNumberButtonClick(with numberTitle: String, and digitsLabelText: String) {
        if digitsLabelText == zeroNumberText {
            view.setTextToDigitsLabel(numberTitle)
        } else if waitingSecondNumber {
            view.setTextToDigitsLabel(numberTitle)
            waitingSecondNumber = false
        } else {
            view.setTextToDigitsLabel(digitsLabelText + numberTitle)
        }
    }
    
    func onCommaButtonClick(with digitsLabelText: String) {
        guard !digitsLabelText.contains(comma) else { return }
        view.setTextToDigitsLabel(digitsLabelText + comma)
    }
    
    func onOperationButtonClick(with operationTitle: String, and digitsLabelText: String) {
        guard let operation = Operations(rawValue: operationTitle) else { return }
    
        waitingSecondNumber = true
        currentOperation = operation
        savedFirstNumber = Double(digitsLabelText)
    }
    
    func onSingleOperationButtonClick(with operationTitle: String, and digitsLabelText: String) {
        guard let singleOperation = SingleOperations(rawValue: operationTitle),
            let number = Double(digitsLabelText) else { return }
        
        interactor.perform(with: singleOperation, and: number)
    }
    
    func onClearButtonClick() {
        savedFirstNumber = nil
        waitingSecondNumber = false
        currentOperation = nil
        
        view.setTextToDigitsLabel(zeroNumberText)
        view.clearPressedOperationButton()
    }
    
    func onEqualButtonClick(with digitsLabelText: String) {
        guard let firstNumber = savedFirstNumber,
            let secondNumber = Double(digitsLabelText),
            let operation = currentOperation else {
                view.clearPressedOperationButton()
                return
        }
        
        interactor.perform(with: operation, firstNumber, secondNumber)
    }
    
    //MARK: - interactor output
    
    func calculateResult(_ result: Double?) {
        guard let result = result else {
            view.showErrorAlert(with: somethingWentWrongMessage)
            return
        }
        
        var resultString: String!
        
        let isInteger = result.truncatingRemainder(dividingBy: 1) == 0
        if isInteger {
            let roundedResult = Int(result)
            resultString = String(roundedResult)
        } else {
            resultString = String(result)
        }
        
        view.setTextToDigitsLabel(resultString)
        view.clearPressedOperationButton()
    }
}
