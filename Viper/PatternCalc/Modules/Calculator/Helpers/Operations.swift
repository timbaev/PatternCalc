//
//  Operations.swift
//  PatternCalc
//
//  Created by Тимур Шафигуллин on 23.02.18.
//  Copyright © 2018 iOSMobileLab. All rights reserved.
//

import Foundation

//operations with two number
enum Operations: String {
    case plus = "+"
    case minus = "-"
    case multiply = "×"
    case devide = "÷"
}

//operations with single number
enum SingleOperations: String {
    case percent = "%"
    case power = "x²"
}
