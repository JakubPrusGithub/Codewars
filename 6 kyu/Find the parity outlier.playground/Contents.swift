import UIKit

func findOutlier(_ array: [Int]) -> Int {
    var evenOrOdd = 0
    for i in 0...2 {
        evenOrOdd += array[i] % 2 == 0 ? 1 : -1
    }
    if evenOrOdd > 0 {
        return Int(array.filter{!$0.isMultiple(of: 2)}.map{"\($0)"}.joined())!
    }
    else{
        return Int(array.filter{$0.isMultiple(of: 2)}.map{"\($0)"}.joined())!
    }
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Sample tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(findOutlier([1, 33, 10053359313, 2, 1, 1, 1, 1, 1, 1, -3, 9]), 2)
        XCTAssertEqual(findOutlier([8, 80, 14, 2, 20, 0, 21, 80]), 21)
    }
}

SolutionTest.defaultTestSuite.run()
