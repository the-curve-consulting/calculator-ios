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
    var history: [String] {get}
}

class CalculatorImpl : Calculator {
    
    var history = [String]()
    
    public class var shared: Calculator {
        struct Static {
            static let instance = CalculatorImpl()
        }
        return Static.instance
    }
    
    func add(_ value1: Double, _ value2: Double) -> Double {
        let result = value1 + value2
        history.append("\(value1) + \(value2) = \(result)")
        return result;
    }
    func subtract(_ value1: Double, _ value2: Double) -> Double {
        let result = value1 - value2
        history.append("\(value1) - \(value2) = \(result)")
        return result
    }
    func multiply(_ value1: Double, _ value2: Double) -> Double {
        let result = value1 * value2
        history.append("\(value1) * \(value2) = \(result)")
        return result
    }
    func divide(_ value1: Double, _ value2: Double) -> Double {
        let result = value1 / value2
        history.append("\(value1) / \(value2) = \(result)")
        return result
    }
    
}
