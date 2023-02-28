import UIKit

func repeatStr(_ n: Int, _ string: String) -> String {
    Array(repeating: string, count: n).joined()
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Repeat", testRepeat),
    ]

    func testRepeat() {
        XCTAssertEqual(repeatStr(5, "Hello"), "HelloHelloHelloHelloHello")
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.005) seconds
