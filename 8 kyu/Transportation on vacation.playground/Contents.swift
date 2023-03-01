import UIKit

func RentalCarCost(_ days: Int) -> Int {
  return days >= 7 ? days*40-50 : days >= 3 ? days*40-20 : days*40
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Sample tests", testExample),
    ]

    func testExample() {
      XCTAssertEqual(RentalCarCost(1), 40)
      XCTAssertEqual(RentalCarCost(2), 80)
      XCTAssertEqual(RentalCarCost(3), 100)
      XCTAssertEqual(RentalCarCost(4), 140)
      XCTAssertEqual(RentalCarCost(5), 180)
      XCTAssertEqual(RentalCarCost(7), 230)
      XCTAssertEqual(RentalCarCost(8), 270)
      XCTAssertEqual(RentalCarCost(9), 310)
      XCTAssertEqual(RentalCarCost(10), 350)
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.005) seconds
