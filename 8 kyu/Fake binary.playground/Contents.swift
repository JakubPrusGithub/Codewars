import UIKit

func fakeBin(digits: String) -> String {
    return Array(digits).map{Int("\($0)")! < 5 ? "0" : "1"}.joined()
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(fakeBin(digits: "45385593107843568"), "01011110001100111")
        XCTAssertEqual(fakeBin(digits: "509321967506747"), "101000111101101")
        XCTAssertEqual(fakeBin(digits: "366058562030849490134388085"), "011011110000101010000011011")
        XCTAssertEqual(fakeBin(digits: "15889923"), "01111100")
        XCTAssertEqual(fakeBin(digits: "800857237867"), "100111001111")
        XCTAssertEqual(fakeBin(digits: ""), "")
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.005) seconds
