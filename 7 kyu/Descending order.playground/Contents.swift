import UIKit

func descendingOrder(of number: Int) -> Int {
    return Int(String(number).compactMap{Int(String($0))}.sorted().reversed().map{String($0)}.joined())!
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(descendingOrder(of: 0), 0)
        XCTAssertEqual(descendingOrder(of: 15), 51)
        XCTAssertEqual(descendingOrder(of: 123456789), 987654321)
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.006 (0.009) seconds
