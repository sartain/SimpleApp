//
//  ScoringTests.swift
//  SimpleAppTests
//
//  Created by Alex Sartain on 14/10/2021.
//
import XCTest
@testable import SimpleApp

class ScoringTests: XCTestCase {

    func testLocalization() throws {
        LocalizationKey.allCases.forEach { localizationKey in
            XCTAssertEqual(localize(localizationKey, default: "1"), localize(localizationKey, default: "2"))
        }
    }
    func testScoreSetup() throws {
        let scoreboard = Scoreboard()
        XCTAssertEqual(0, scoreboard.getScore())
    }

    func testQuestionRight() throws {
        let scoreboard = Scoreboard()
        scoreboard.answerQuestion(correct: true)
        XCTAssertEqual(3, scoreboard.getScore())
    }
    
}
