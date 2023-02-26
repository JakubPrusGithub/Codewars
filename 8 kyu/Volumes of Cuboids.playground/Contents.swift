import UIKit

func findDifference(_ a: [Int], _ b: [Int]) -> Int { abs(a[0]*a[1]*a[2]-b[0]*b[1]*b[2]) }

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testExample)
    ]

    func testExample() {
      
      let testCases = [
        ([1, 1, 1], [2, 2, 2], 7),
        ([2, 2, 2], [1, 1, 1], 7),
        ([3, 2, 5], [1, 4, 4], 14),
        ([9, 7, 2], [5, 2, 2], 106),
        ([11, 2, 5], [1, 10, 8], 30),
        ([4, 4, 7], [3, 9, 3], 31),
        ([15, 20, 25], [10, 30, 25], 0)
      ];
      
      for (cuboid1, cuboid2, expected) in testCases {
        let actual = findDifference(cuboid1, cuboid2)
        XCTAssertEqual(actual, expected, "\nFor cuboids \(cuboid1) and \(cuboid2)\n\(actual) should equal \(expected)")
      }
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.006 (0.009) seconds
