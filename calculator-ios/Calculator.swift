//
//  Calculator.swift
//  calculator-ios
//
//  Created by James Ridgway on 20/04/2020.
//  Copyright © 2020 James Ridgway. All rights reserved.
//

import Foundation

protocol Calculator {
    func add(_ value1: Double, _ value2: Double) -> Double
    func subtract(_ value1: Double, _ value2: Double) -> Double
    func multiply(_ value1: Double, _ value2: Double) -> Double
    func divide(_ value1: Double, _ value2: Double) -> Double
}

class CalculatorImpl : Calculator {
    func add(_ value1: Double, _ value2: Double) -> Double {
        return value1 + value2;
    }
    func subtract(_ value1: Double, _ value2: Double) -> Double {
        return value1 - value2;
    }
    func multiply(_ value1: Double, _ value2: Double) -> Double {
        return value1 * value2;
    }
    func divide(_ value1: Double, _ value2: Double) -> Double {
        return value1 / value2;
    }
}
