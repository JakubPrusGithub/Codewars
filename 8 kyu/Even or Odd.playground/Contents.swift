import UIKit

func evenOrOdd(_ number:Int) -> String {
  return (number % 2 == 0) ? "Even" : "Odd"
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(evenOrOdd(2),"Even")
        XCTAssertEqual(evenOrOdd(0),"Even")
        XCTAssertEqual(evenOrOdd(7),"Odd")
        XCTAssertEqual(evenOrOdd(1),"Odd")
        XCTAssertEqual(evenOrOdd(-4),"Even")
        XCTAssertEqual(evenOrOdd(-3),"Odd")
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.004) seconds
