import UIKit

func angle(_ n: Int) -> Int { (n-2) * 180 }

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testExample)
    ]

    func testExample() {
        XCTAssertEqual(angle(3), 180)
        XCTAssertEqual(angle(4), 360)
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.004) seconds
