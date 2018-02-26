//
//  AlertsFactory.swift
//  PatternCalc
//
//  Created by Тимур Шафигуллин on 26.02.18.
//  Copyright © 2018 iOSMobileLab. All rights reserved.
//

import UIKit

class AlertsFactory: AlertsFactoryProtocol {
    
    private let errorTitle = "Ошибка"
    private let okButtonText = "OK"
    
    func getErrorAlert(with message: String) -> UIViewController {
        let alert = createEmptyAlert(with: errorTitle, and: message)
        let okAction = UIAlertAction(title: okButtonText, style: .default, handler: nil)
        alert.addAction(okAction)
        return alert
    }
    
    private func createEmptyAlert(with title: String?, and message: String?) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        return alertController
    }
    
}
