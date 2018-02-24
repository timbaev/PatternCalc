//
//  ReusableView.swift
//  PatternCalc
//
//  Created by Тимур Шафигуллин on 23.02.18.
//  Copyright © 2018 iOSMobileLab. All rights reserved.
//

import UIKit

protocol ReusableView: class {
}

extension ReusableView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UIViewController: ReusableView{
}

extension UIStoryboard {
    func instantiateViewController<T>() -> T where T: ReusableView {
        return instantiateViewController(withIdentifier: T.reuseIdentifier) as! T
    }
}
