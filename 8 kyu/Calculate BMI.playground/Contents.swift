import UIKit

func bmi(_ weight: Int, _ height: Double) -> String {
    let result = Double(weight) / pow(height, 2)
    switch result {
    case 0...18.5: return "Underweight"
    case 18.5...25.0: return "Normal"
    case 25.0...30.0: return "Overweight"
    default: return "Obese"
    }
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testExample),
    ]
    
    func testExample() {
        XCTAssertEqual("Underweight", bmi(50, 1.80))
        XCTAssertEqual("Normal", bmi(80, 1.80))
        XCTAssertEqual("Overweight", bmi(90, 1.80))
        XCTAssertEqual("Obese", bmi(110, 1.80))
        XCTAssertEqual("Normal", bmi(50, 1.50))
    }
    
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.004) seconds
