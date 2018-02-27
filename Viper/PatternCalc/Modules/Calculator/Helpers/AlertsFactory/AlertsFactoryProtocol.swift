//
//  AlertsFactoryProtocol.swift
//  PatternCalc
//
//  Created by Тимур Шафигуллин on 26.02.18.
//  Copyright © 2018 iOSMobileLab. All rights reserved.
//

import UIKit

protocol AlertsFactoryProtocol: class {
    
    /// Get error alert
    ///
    /// - Parameter message: alert message
    /// - Returns: prepared alert
    func getErrorAlert(with message: String) -> UIViewController
    
}
