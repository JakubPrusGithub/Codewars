import UIKit

func disemvowel(_ s: String) -> String {
    s.replacingOccurrences(of: "[aeiouAEIOU]", with: "", options: [.regularExpression])
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual("Ths wbst s fr lsrs LL!", disemvowel("This website is for losers LOL!"))
        XCTAssertEqual("N ffns bt,\nYr wrtng s mng th wrst 'v vr rd", disemvowel("No offense but,\nYour writing is among the worst I've ever read"))
        XCTAssertEqual("Wht r y,  cmmnst?", disemvowel("What are you, a communist?"))
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.004) seconds
