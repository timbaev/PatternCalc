//
//  CalculatorRouter.swift
//  PatternCalc
//
//  Created by Тимур Шафигуллин on 24.02.18.
//  Copyright © 2018 iOSMobileLab. All rights reserved.
//

import UIKit

class CalculatorConfigurator {
    
    static func setupModule() -> CalculatorViewController {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController() as CalculatorViewController
        let presenter = CalculatorPresenter()
        let manager = CalculatorManager()
        
        viewController.presenter = presenter
        
        presenter.view = viewController
        presenter.calculatorManager = manager
        
        return viewController
    }
    
}
