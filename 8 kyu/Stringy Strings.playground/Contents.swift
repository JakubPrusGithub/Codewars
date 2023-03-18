import UIKit

func stringy(_ size: Int) -> String {
  var answer = ""
  for i in 1...size {
    answer += i.isMultiple(of: 2) ? "0" : "1"
  }
  return answer
}


import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(stringy(1), "1")
        XCTAssertEqual(stringy(2), "10")
        XCTAssertEqual(stringy(3), "101")
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.004) seconds
