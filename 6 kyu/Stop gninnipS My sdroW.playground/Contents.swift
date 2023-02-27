import UIKit

func spinWords(in sentence: String) -> String {
    let words = sentence.components(separatedBy: " ")
    var answer: [String] = []
    for word in words {
        if word.count > 4 {
            answer.append(String(word.reversed()))
        }
        else {
            answer.append(word)
        }
    }
    return answer.joined(separator: " ")
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Testing", testExample)
    ]

    func testExample() {
        let testCases = [
          ("Welcome", "emocleW"),
          ("to", "to"),
          ("CodeWars", "sraWedoC"),
          ("Hey fellow warriors", "Hey wollef sroirraw"),
          ("This sentence is a sentence", "This ecnetnes is a ecnetnes")
        ]
      assertTest(testCases)
    }
  
  private func assertTest(_ testCase: [(String, String)]) {
    testCase.forEach {
      XCTAssertEqual(spinWords(in: $0.0), $0.1)
    }
  }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.005 (0.006) seconds
