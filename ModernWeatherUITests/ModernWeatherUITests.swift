//
//  ModernWeatherUITests.swift
//  ModernWeatherUITests
//
//  Created by ANDELA on 24/05/2025.
//

import XCTest
@testable import ModernWeatherUI

final class ModernWeatherUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSample() throws {
        let expected = "Hello"
        let actual = "Hello"
        XCTAssertEqual(actual, expected)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
