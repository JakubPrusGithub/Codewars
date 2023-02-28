import UIKit

func squareOrSquareRoot(_ input: [Int]) -> [Int] {
  // input.map { Int(sqrt(Double($0)) == floor(sqrt(Double($0))) ? sqrt(Double($0)) : pow(Double($0), 2)) }
  // this works in XCode but the website compiler is unable to type-check this expression in reasonable time
    
    var answer: [Int] = []
    for i in 0..<input.count{
        if sqrt(Double(input[i])) == floor(sqrt(Double(input[i]))){
            answer.append(Int(sqrt(Double(input[i]))))
        }else{
            answer.append(Int(pow(Double(input[i]), 2.0)))
        }
    }
    return answer
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(squareOrSquareRoot([4, 3, 9, 7, 2, 1]), [2, 9, 3, 49, 4, 1])
        XCTAssertEqual(squareOrSquareRoot([100, 101, 5, 5, 1, 1]), [10, 10201, 25, 25, 1, 1])
        XCTAssertEqual(squareOrSquareRoot([1, 2, 3, 4, 5, 6]), [1, 4, 9, 2, 25, 36])
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.005) seconds
