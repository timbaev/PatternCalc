//
//  DoubleWithComma.swift
//  PatternCalc
//
//  Created by Тимур Шафигуллин on 24.02.18.
//  Copyright © 2018 iOSMobileLab. All rights reserved.
//

import Foundation

extension Double {
    
    init?(stringWithComma: String) {
        let formatedString = stringWithComma.replacingOccurrences(of: ",", with: ".")
        self.init(formatedString)
    }
    
}
