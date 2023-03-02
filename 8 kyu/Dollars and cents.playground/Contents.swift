import Foundation

func formatMoney(_ val:Double) -> String {
  return "$\(NSString(format: "%.2f", val))"
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("testDollarsAndCents", testExample),
    ]

    func testExample() {
        XCTAssertEqual(formatMoney(0), "$0.00")
        XCTAssertEqual(formatMoney(3), "$3.00")
        XCTAssertEqual(formatMoney(3.1), "$3.10")
        XCTAssertEqual(formatMoney(3.10), "$3.10")
        XCTAssertEqual(formatMoney(3.100), "$3.10")
        XCTAssertEqual(formatMoney(3.1000000), "$3.10")
        XCTAssertEqual(formatMoney(39.99), "$39.99")
        XCTAssertEqual(formatMoney(314.16), "$314.16")
        XCTAssertEqual(formatMoney(123456789.166666), "$123456789.17")
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.004) seconds
