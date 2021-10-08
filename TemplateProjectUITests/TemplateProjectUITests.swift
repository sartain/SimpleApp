//
//  TemplateProjectUITests.swift
//  TemplateProjectUITests
//
//  Created by Alex Sartain on 08/10/2021.
//

import XCTest

class TemplateProjectUITests: XCTestCase {

    func testHappyPath() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        XCTAssertTrue(app.staticTexts["VC 1"].exists)
        XCTAssertTrue(app.buttons["my Button"].exists)
        
        app.buttons["my Button"].tap()
        XCTAssertTrue(app.staticTexts["VC 2"].exists)
    }
    
}
