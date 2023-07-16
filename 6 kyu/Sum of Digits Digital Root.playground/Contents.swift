import UIKit

func digitalRoot(of number: Int) -> Int {
    var sum = 0
    var enumeratedNumbers = number.description.enumerated()
    for num in enumeratedNumbers {
        sum += Int(num.element.description)!
    }
    if sum > 9 {
        sum = digitalRoot(of: sum)
    }
    return sum
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testExample)
    ]
    
    func testExample() {
        XCTAssertEqual(digitalRoot(of: 16), 7);
        XCTAssertEqual(digitalRoot(of: 456), 6);
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.004) seconds
