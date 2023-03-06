import UIKit

func correct(_ timeString: String?) -> String? {
    if timeString == "" {return ""}
    guard let time = timeString else {return nil}
    if time.rangeOfCharacter(from: NSCharacterSet.letters) != nil {return nil}
    var values = time.components(separatedBy: ":").map{Int($0) ?? 0}
    guard values.count > 1 else {return nil}
    while values[2] >= 60 {
        values[2] -= 60
        values[1] += 1
    }
    while values[1] >= 60{
        values[1] -= 60
        values[0] += 1
    }
    while values[0] >= 24 {
        values[0] -= 24
    }
    return String(format: "%02d:%02d:%02d", values[0], values[1], values[2])
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Testing", testExample)
    ]
    
    func testExample() {
        XCTAssertNil(correct(nil))
        XCTAssertEqual("09:10:01", correct("09:10:01"))
        XCTAssertEqual("12:10:10", correct("11:70:10"))
        XCTAssertEqual("20:40:39", correct("19:99:99"))
        XCTAssertEqual("00:01:01", correct("24:01:01"))
        XCTAssertEqual("04:01:01", correct("52:01:01"))
        XCTAssertNil(correct("001122"))
        XCTAssertNil(correct("00;11;22"))
        XCTAssertNil(correct("0a:1c:22"))
        XCTAssertEqual("", correct(""))
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.007) seconds
