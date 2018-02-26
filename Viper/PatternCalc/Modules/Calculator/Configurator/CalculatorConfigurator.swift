//
//  CalculatorConfigurator.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

import UIKit

class CalculatorModuleConfigurator {

    static func setupModule() -> CalculatorViewController {
        let viewController: CalculatorViewController = UIStoryboard(storyboard: .main).instantiateViewController()
        let alertsFactory = AlertsFactory()
        let presenter = CalculatorPresenter()
        let router = CalculatorRouter()
        let interactor = CalculatorInteractor()
        
        viewController.presenter = presenter
        
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        presenter.alertsFactory = alertsFactory
        
        router.view = viewController
        
        interactor.presenter = presenter
        
        return viewController
    }

}
