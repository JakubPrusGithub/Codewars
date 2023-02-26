import UIKit

func solution(_ num: Int) -> Int {
    var answer: Set = [0]
    for number in stride(from: 0, through: num-1, by: 1) {
        if number.isMultiple(of: 3) || number.isMultiple(of: 5) {
            answer.insert(number)
        }
    }
    return answer.reduce(0, +)
}

import XCTest
class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Solution", testSolution),
    ]
    
    func testSolution() {
        XCTAssertEqual(solution(10), 23)
        XCTAssertEqual(solution(20), 78)
        XCTAssertEqual(solution(200), 9168)
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.013 (0.014) seconds
