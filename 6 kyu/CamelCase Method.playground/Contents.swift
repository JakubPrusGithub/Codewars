import UIKit

func camelCase(_ str: String) -> String {
  return str.components(separatedBy: " ").map{$0.capitalized}.joined()
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(camelCase("test case"), "TestCase")
        XCTAssertEqual(camelCase("camel case method"), "CamelCaseMethod")
        XCTAssertEqual(camelCase("say hello "), "SayHello")
        XCTAssertEqual(camelCase(" camel case word"), "CamelCaseWord")
        XCTAssertEqual(camelCase(""), "")
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.005) seconds
