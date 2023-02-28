import UIKit

func simpleMultiplication(_ num: Int) -> Int {
  return num.isMultiple(of: 2) ? num*8 : num*9
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(simpleMultiplication(8), 64)
        XCTAssertEqual(simpleMultiplication(2), 16)
        XCTAssertEqual(simpleMultiplication(5), 45)
        XCTAssertEqual(simpleMultiplication(21), 189)
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.005) seconds
