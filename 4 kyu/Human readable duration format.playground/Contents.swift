import UIKit

func formatDuration(_ seconds: Int) -> String {
    if seconds == 0 {return "now"}
    var years = 0
    var days = 0
    var hours = 0
    var minutes = 0
    var allSeconds = seconds
    while allSeconds >= 31536000 {
        allSeconds -= 31536000
        years += 1
    }
    while allSeconds >= 86400 {
        allSeconds -= 86400
        days += 1
    }
    while allSeconds >= 3600 {
        allSeconds -= 3600
        hours += 1
    }
    while allSeconds >= 60 {
        allSeconds -= 60
        minutes += 1
    }
    var times = ""
    if years > 0{
        if years == 1{
            times += "1 year"
        }
        else{
            times += "\(years) years"
        }
    }
    if days > 0 {
        if days == 1{
            if years > 0 {
                if hours > 0 || minutes > 0 || allSeconds > 0 {
                    times += ", 1 day"
                }
                else{
                    times += " and 1 day"
                }
            }
            else{
                times += "1 day"
            }
        }
        else{
            if years > 0 {
                if hours > 0 || minutes > 0 || allSeconds > 0 {
                    times += ", \(days) days"
                }
                else{
                    times += " and \(days) days"
                }
            }
            else{
                times += "\(days) days"
            }
        }
    }
    if hours > 0 {
        if hours == 1{
            if years > 0  || days > 0{
                if minutes > 0 || allSeconds > 0 {
                    times += ", 1 hour"
                }
                else{
                    times += " and 1 hour"
                }
            }
            else{
                times += "1 hour"
            }
        }
        else{
            if years > 0  || days > 0{
                if minutes > 0 || allSeconds > 0 {
                    times += ", \(hours) hours"
                }
                else{
                    times += " and \(hours) hours"
                }
            }
            else{
                times += "\(hours) hours"
            }
        }
    }
    if minutes > 0 {
        if minutes == 1{
            if years > 0  || days > 0 || hours > 0{
                if allSeconds > 0 {
                    times += ", 1 minute"
                }
                else{
                    times += " and 1 minute"
                }
            }
            else{
                times += "1 minute"
            }
        }
        else{
            if years > 0  || days > 0 || hours > 0{
                if allSeconds > 0 {
                    times += ", \(minutes) minutes"
                }
                else{
                    times += " and \(minutes) minutes"
                }
            }
            else{
                times += "\(minutes) minutes"
            }
        }
    }
    if allSeconds > 0 {
        if allSeconds == 1{
            if years > 0  || days > 0 || hours > 0 || minutes > 0{
                times += " and 1 second"
            }
            else{
                times += "1 second"
            }
        }
        else{
            if years > 0  || days > 0 || hours > 0 || minutes > 0{
                times += " and \(allSeconds) seconds"
            }
            else{
                times += "\(allSeconds) seconds"
            }
        }
    }
    return times
}

import XCTest

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testExample),
    ]
    
    func testExample() {
        XCTAssertEqual(formatDuration(1), "1 second")
        XCTAssertEqual(formatDuration(62), "1 minute and 2 seconds")
        XCTAssertEqual(formatDuration(120), "2 minutes")
        XCTAssertEqual(formatDuration(3600), "1 hour")
        XCTAssertEqual(formatDuration(3662), "1 hour, 1 minute and 2 seconds")
    }
}

SolutionTest.defaultTestSuite.run()
// Executed 1 test, with 0 failures (0 unexpected) in 0.004 (0.005) seconds
