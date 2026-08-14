//
//  Net.swift
//  Tests
//
//  Created by Serhiy Mytrovtsiy on 05/08/2026.
//  Using Swift 6.0.
//  Running on macOS 26.5.
//
//  Copyright © 2026 Serhiy Mytrovtsiy. All rights reserved.
//

import XCTest
import Net

class NetTests: XCTestCase {
    func testNormalizeSSID_clearsEmptyAndRedacted() throws {
        XCTAssertNil(Network_wifi.normalizeSSID(nil))
        XCTAssertNil(Network_wifi.normalizeSSID(""))
        XCTAssertNil(Network_wifi.normalizeSSID("<redacted>"))
    }

    func testNormalizeSSID_keepsRealValues() throws {
        XCTAssertEqual(Network_wifi.normalizeSSID("FF 6G"), "FF 6G")
        XCTAssertEqual(Network_wifi.normalizeSSID("Easton's iPhone"), "Easton's iPhone")
    }
}
