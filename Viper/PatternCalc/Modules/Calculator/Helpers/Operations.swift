//
//  Operations.swift
//  PatternCalc
//
//  Created by Тимур Шафигуллин on 23.02.18.
//  Copyright © 2018 iOSMobileLab. All rights reserved.
//

import Foundation

/// Operations to calculate two numbers
///
/// - plus: plus operation
/// - minus: minus operation
/// - multiply: multiply operation
/// - devide: devide operation
enum Operations: String {
    case plus = "+"
    case minus = "-"
    case multiply = "×"
    case devide = "÷"
}


/// Operations to calculate single number
///
/// - percent: percent of number
/// - power: power operation
enum SingleOperations: String {
    case percent = "%"
    case power = "x²"
}
