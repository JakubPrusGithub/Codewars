import UIKit

func getAverage(_ marks: [Int]) -> Int {
  return Int(floor(Double(marks.reduce(0,+)/marks.count)))
}

import XCTest

final class SolutionTest: XCTestCase {
    static var allTests = [
        ("Simple tests", testExample),
    ]

    func testExample() {
      XCTAssertEqual(getAverage([2,2,2,2]),2);
      XCTAssertEqual(getAverage([1,2,3,4,5,]),3);
      XCTAssertEqual(getAverage([1,1,1,1,1,1,1,2]),1);
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.005) seconds
