import UIKit

func hero(bullets: Int, dragons: Int) -> Bool {
  return bullets/2 >= dragons
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Hero will win", testHeroWillWin),
        ("Test Hero will lose", testHeroWillLose),
    ]

    func testHeroWillWin() {
        XCTAssertTrue(hero(bullets: 4, dragons: 2))
    }
  
    func testHeroWillLose() {
        XCTAssertFalse(hero(bullets: 4, dragons: 3))
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 2 tests, with 0 failures (0 unexpected) in 0.004 (0.006) seconds
