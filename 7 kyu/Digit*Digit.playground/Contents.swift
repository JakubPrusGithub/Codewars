import UIKit

func squareDigits(_ num: Int) -> Int {
    var arr = String(num).compactMap{Int(String($0))}
    var answer = ""
    for number in arr {
        answer += String(number*number)
    }
    return Int(answer)!
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
      XCTAssertEqual(squareDigits(9119), 811181)
      XCTAssertEqual(squareDigits(0), 0)
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.005) seconds
