//
//  CalculatorRouter.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

import UIKit

class CalculatorRouter: CalculatorRouterInput {

	weak var view: UIViewController!
    var alertsFactory: AlertsFactoryProtocol!
    
    func showErrorAlert(with message: String) {
        let errorAlert = alertsFactory.getErrorAlert(with: message)
        view.present(errorAlert, animated: true, completion: nil)
    }

}
