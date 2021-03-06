//
//  calculator_iosTests.swift
//  calculator-iosTests
//
//  Created by James Ridgway on 20/04/2020.
//  Copyright © 2020 James Ridgway. All rights reserved.
//

import XCTest
@testable import calculator_ios

class calculator_iosTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAdd() throws {
        let calc = CalculatorImpl()
        XCTAssertEqual(calc.add(5, 10), 15)
    }
    
    func testSubtract() throws {
        let calc = CalculatorImpl()
        XCTAssertEqual(calc.subtract(5, 10), -5)
    }
    
    func testDivide() throws {
        let calc = CalculatorImpl()
        XCTAssertEqual(calc.divide(5, 10), 0.5)
    }
    
    func testMultiply() throws {
        let calc = CalculatorImpl()
        XCTAssertEqual(calc.multiply(5, 10), 50)
    }
    
}
