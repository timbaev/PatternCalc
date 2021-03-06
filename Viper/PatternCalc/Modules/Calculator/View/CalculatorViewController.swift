//
//  CalculatorViewController.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet var calculatorButtons: [UIButton]!
    @IBOutlet var operationButtons: [UIButton]!
    @IBOutlet weak var digitsLabel: UILabel!
    
    var presenter: CalculatorViewOutput!
    
    private var pressedOperationButton: UIButton?

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
    }
    
    // MARK: - prepare methods
    
    func prepareButtons() {
        calculatorButtons.forEach {
            $0.layer.cornerRadius = $0.frame.size.height / 2
            $0.clipsToBounds = true
        }
    }
    
    // MARK: - buttons click
    @IBAction func onNumberButtonClick(_ sender: UIButton) {
        guard let buttonTitle = sender.title(for: .normal),
            let digitLabelText = digitsLabel.text else { return }
        presenter.onNumberButtonClick(with: buttonTitle, and: digitLabelText)
    }
    
    @IBAction func onOperationButtonClick(_ sender: UIButton) {
        guard let operationTitle = sender.title(for: .normal),
            let digitLabelText = digitsLabel.text else { return }
        
        if let pressedButton = pressedOperationButton, pressedButton != sender {
            pressedButton.backgroundColor = UIColorPallete.backgroundOperationButtonColorNormal
            pressedButton.setTitleColor(.white, for: .normal)
        }
        
        sender.backgroundColor = UIColor.white
        sender.setTitleColor(UIColorPallete.backgroundOperationButtonColorNormal, for: .normal)
        pressedOperationButton = sender
        
        presenter.onOperationButtonClick(with: operationTitle, and: digitLabelText)
    }
    
    @IBAction func onCommaButtonClick(_ sender: UIButton) {
        guard let digitLabelText = digitsLabel.text else { return }
        presenter.onCommaButtonClick(with: digitLabelText)
    }
    
    @IBAction func onSingleOperationButtonClick(_ sender: UIButton) {
        guard let operationTitle = sender.title(for: .normal),
            let digitLabelText = digitsLabel.text else { return }
        presenter.onSingleOperationButtonClick(with: operationTitle, and: digitLabelText)
    }
    
    @IBAction func onClearButtonClick(_ sender: UIButton) {
        presenter.onClearButtonClick()
    }
    
    @IBAction func onEqualButtonClick(_ sender: UIButton) {
        guard let digitLabelText = digitsLabel.text else { return }
        presenter.onEqualButtonClick(with: digitLabelText)
    }
    
    
}

// MARK: CalculatorViewInput
extension CalculatorViewController: CalculatorViewInput {
	
	func setupInitialState() {
    	prepareButtons()
    }
    
    func setTextToDigitsLabel(_ text: String) {
        digitsLabel.text = text
    }
    
    func clearPressedOperationButton() {
        guard let pressedButton = pressedOperationButton else { return }
        pressedButton.backgroundColor = UIColorPallete.backgroundOperationButtonColorNormal
        pressedButton.setTitleColor(.white, for: .normal)
    }

}
