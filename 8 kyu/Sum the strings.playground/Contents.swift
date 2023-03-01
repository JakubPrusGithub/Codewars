import UIKit

func sum_str(_ a:String, _ b:String) -> String {
    let first = Int(a) ?? 0
    let second = Int(b) ?? 0
    return String(first + second)
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Sample Tests", testExample)
    ]

    func testExample() {
        XCTAssertEqual(sum_str("4","5"), "9")
        XCTAssertEqual(sum_str("34","5"), "39")
        XCTAssertEqual(sum_str("9",""), "9")
        XCTAssertEqual(sum_str("",""), "0")
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.004) seconds
