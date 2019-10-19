//
//  window_shopper_appTests.swift
//  window-shopper-appTests
//
//  Created by Syed Saud on 17/10/2019.
//  Copyright © 2019 Syed Saud. All rights reserved.
//

import XCTest

class window_shopper_appTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetHours() {
        XCTAssert(Wage.getHours(ForWage: 25, AndPrice: 100) == 4)
        XCTAssert(Wage.getHours(ForWage: 15.50, AndPrice: 250.53) == 17)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
