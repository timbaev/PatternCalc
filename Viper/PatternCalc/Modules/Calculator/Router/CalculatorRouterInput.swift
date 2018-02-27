//
//  CalculatorRouterInput.swift
//  PatternCalc
//
//  Created by Timbaev on 23/02/2018.
//  Copyright © 2018 Timbaev. All rights reserved.
//

import UIKit

protocol CalculatorRouterInput {
    
    
    /// Show error alert on screen
    ///
    /// - Parameter message: message to display
    func showErrorAlert(with message: String)

}
