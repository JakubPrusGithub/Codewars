import UIKit

func calculate1RM(_ weight: Int, _ reps: Int) -> Int? {
    guard reps != 0 else {return nil}
    guard reps != 1 else {return weight}
    let weightD = Double(weight)
    let repsD = Double(reps)
    let epley = weightD*(1+(repsD/30))
    let mcGlothin = 100*weightD/(101.3 - 2.67123*repsD)
    let lombardi = weightD*pow(repsD, 0.10)
    let results = [epley, mcGlothin, lombardi]
    let max = results.sorted().reversed().map{Int(round($0))}
    return max[0]
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Sample tests", testExample)
    ]
    func testExample() {
        XCTAssertEqual(calculate1RM(0, 0), nil)
        XCTAssertEqual(calculate1RM(1, 0), nil)
        XCTAssertEqual(calculate1RM(0, 1), 0)
        XCTAssertEqual(calculate1RM(1, 1), 1)
        XCTAssertEqual(calculate1RM(320, 7)!, 395)
        XCTAssertEqual(calculate1RM(220, 10)!, 295)
        XCTAssertEqual(calculate1RM(120, 2)!,  129)
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds
