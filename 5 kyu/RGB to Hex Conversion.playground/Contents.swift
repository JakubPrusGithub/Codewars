import UIKit

func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
    let rgb = [r,g,b].map{$0 > 255 ? 255 : $0}.map{$0 < 0 ? 0 : $0}
    let hex = rgb.map{String($0, radix: 16).uppercased()}.map{$0.count == 1 ? "0\($0)" : $0}
    return hex.joined()
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual("FFFFFF", rgb(255,255,255))
        XCTAssertEqual("FFFFFF", rgb(255,255,300))
        XCTAssertEqual("000000", rgb(0,0,0))
        XCTAssertEqual("9400D3", rgb(148,0,211))
        XCTAssertEqual("9400D3", rgb(148,-20,211))
        XCTAssertEqual("90C3D4", rgb(144,195,212))
        XCTAssertEqual("D4350C", rgb(212,53,12))
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.006 (0.008) seconds
