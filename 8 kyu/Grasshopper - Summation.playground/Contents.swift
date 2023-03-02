import UIKit

func summation(_ n: Int) -> Int {
  return Array(1...n).reduce(0,+)
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(summation(1), 1)
        XCTAssertEqual(summation(8), 36)
        XCTAssertEqual(summation(22), 253)
        XCTAssertEqual(summation(100), 5050)
        XCTAssertEqual(summation(213), 22791)
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.005) seconds
