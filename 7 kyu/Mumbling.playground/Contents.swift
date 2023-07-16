import UIKit

func accum(_ s: String) -> String {
    var length = 1
    var mumble = ""
    var arrayLetters: [String] = []
    s.map{arrayLetters.append($0.description)}
    for arrayLetter in arrayLetters {
        var word = ""
        for _ in 1...length {
            word += arrayLetter
        }
        mumble += word.capitalized + "-"
        length += 1
    }
    mumble.popLast()
    return mumble
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testExample)
    ]
    
    func testExample() {
        XCTAssertEqual(accum("abcd"), "A-Bb-Ccc-Dddd")
        XCTAssertEqual(accum("RqaEzty"), "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
        XCTAssertEqual(accum("cwAt"), "C-Ww-Aaa-Tttt")
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.004) seconds
