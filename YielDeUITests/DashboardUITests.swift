//
//  DashboardUITests.swift
//  YielDeUITests
//
//  Created by Kilo Loco on 4/25/24.
//

import XCTest

final class DashboardUITests: XCTestCase {
    func test_Dashboard_DisplaysAllElements() throws {
        let app = XCUIApplication()
        app.launch()

        let supplyButton = app.buttons["Dashboard.SupplyButton"]
        let borrowButton = app.buttons["Dashboard.BorrowButton"]

        XCTAssertTrue(supplyButton.exists)
        XCTAssertTrue(borrowButton.exists)
    }
}
