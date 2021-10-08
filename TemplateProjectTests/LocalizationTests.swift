//
//  TemplateProjectTests.swift
//  TemplateProjectTests
//
//  Created by Alex Sartain on 08/10/2021.
//

import XCTest
@testable import TemplateProject

class LocalizationTests: XCTestCase {

    func testLocalization() throws {
        LocalizationKey.allCases.forEach { localizationKey in
            XCTAssertNotEqual(localizationKey.rawValue, localize(localizationKey))
        }
    }

}
