import UIKit

func inArray(_ a1: [String], _ a2: [String]) -> [String] {
  var answer = [String]()
  for word1 in a1 {
    for word2 in a2 {
      if word2.contains(word1) == true {
        answer.append(word1)
      }
    }
  }
  let unique = Array(Set(answer))
  return unique.sorted()
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("inArray", testExample),
    ]

    func testing(_ a1: [String], _ a2: [String], _ expected: [String]) {
        XCTAssertTrue(inArray(a1, a2) == expected, "should return \(expected)")
    }
     
    func testExample() {
        var a1 = ["live", "arp", "strong"]
        var a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
        var r = ["arp", "live", "strong"]
        testing(a1, a2, r)
           
        a1 = ["arp", "mice", "bull"]
        a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
        r = ["arp"]
        testing(a1, a2, r)
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.005) seconds
