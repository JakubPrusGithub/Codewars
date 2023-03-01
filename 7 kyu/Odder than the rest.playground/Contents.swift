import UIKit

func oddOne(_ arr: [Int]) -> Int? {
  for i in 0..<arr.count {
    if arr[i] % 2 != 0{
      return i
    }
  }
  return nil
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(oddOne([2,4,6,7,10]), 3)
        XCTAssertEqual(oddOne([2,16,98,10,13,78]), 4)
        XCTAssertEqual(oddOne([4,-8,98,-12,-7,90,100]), 4)
        XCTAssertEqual(oddOne([2,4,6,8]), nil)
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.005) seconds
