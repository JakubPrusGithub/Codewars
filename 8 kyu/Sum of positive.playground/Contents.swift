import UIKit

func sumOfPositives (_ numbers: [Int] ) -> Int {
    guard !numbers.isEmpty else {return 0}
    let answer = numbers.filter{$0>0}
    return answer.reduce(0, +)
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(sumOfPositives([1,2,3,4,5]), 15);
        XCTAssertEqual(sumOfPositives([1,-2,3,4,5]), 13);
        XCTAssertEqual(sumOfPositives([-1,2,3,4,-5]), 9);
        XCTAssertEqual(sumOfPositives([]), 0);
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.005) seconds
