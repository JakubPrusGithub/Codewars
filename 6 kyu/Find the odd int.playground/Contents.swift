import UIKit

func findIt(_ seq: [Int]) -> Int {
  let dic = seq.reduce(into: [:]){ counts, number in
    counts[number, default:0] += 1
  }
  return Array(dic.filter{$0.value % 2 == 1}.keys)[0]
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testExample),
    ]
  
    func testExample() {
      let testCases = [
        ([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5], 5),
        ([1,1,2,-2,5,2,4,4,-1,-2,5], -1),
        ([20,1,1,2,2,3,3,5,5,4,20,4,5], 5),
        ([10], 10),
        ([1,1,1,1,1,1,10,1,1,1,1], 10),
      ]
      for testCase in testCases {
        let actual = findIt(testCase.0);
        let expected = testCase.1;
        XCTAssertEqual(actual, expected, "\nInvalid answer for input array: \(testCase.0)\nExpected: \(expected)\nActual: \(actual)")
      }
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.013 (0.014) seconds
