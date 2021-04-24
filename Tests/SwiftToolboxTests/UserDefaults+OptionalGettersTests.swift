//
//  UserDefaults+OptionalGettersTests.swift
//  
//
//  Created by Christian Wollny on 24.04.21.
//

import XCTest
import SwiftToolbox

final class UserDefaults_OptionalGettersTests: XCTestCase {
    private let userDefaults = UserDefaults.standard

    private let sutKey = "UserDefaultsOptionalGettersTestsSutKey"

    override func setUpWithError() throws {
        try super.setUpWithError()

        userDefaults.removeObject(forKey: sutKey)
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()

        userDefaults.removeObject(forKey: sutKey)
    }

    // MARK: - optionalBool

    func test_optionalBool_nilValue() {
        let value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertNil(value)
    }

    func test_optionalBool_nonNilValue_fromBoolean() {
        userDefaults.set(true, forKey: sutKey)
        var value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, true)

        userDefaults.set(false, forKey: sutKey)
        value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, false)
    }

    func test_optionalBool_nonNilValue_fromString() {
        userDefaults.set("true", forKey: sutKey)
        var value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, true)

        userDefaults.set("YES", forKey: sutKey)
        value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, true)

        userDefaults.set("1", forKey: sutKey)
        value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, true)

        userDefaults.set("false", forKey: sutKey)
        value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, false)

        userDefaults.set("NO", forKey: sutKey)
        value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, false)

        userDefaults.set("0", forKey: sutKey)
        value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, false)
    }

    func test_optionalBool_nonNilValue_fromInteger() {
        userDefaults.set(1, forKey: sutKey)
        var value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, true)

        userDefaults.set(0, forKey: sutKey)
        value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, false)
    }

    func test_optionalBool_nonNilValue_fromFloatingPoint() {
        userDefaults.set(1.0, forKey: sutKey)
        var value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, true)

        userDefaults.set(0.0, forKey: sutKey)
        value = userDefaults.optionalBool(forKey: sutKey)
        XCTAssertEqual(value, false)
    }

    // MARK: - optionalInteger

    func test_optionalInteger_nilValue() {
        let value = userDefaults.optionalInteger(forKey: sutKey)
        XCTAssertNil(value)
    }

    func test_optionalInteger_nonNilValue_fromBoolean() {
        userDefaults.set(true, forKey: sutKey)
        var value = userDefaults.optionalInteger(forKey: sutKey)
        XCTAssertEqual(value, 1)

        userDefaults.set(false, forKey: sutKey)
        value = userDefaults.optionalInteger(forKey: sutKey)
        XCTAssertEqual(value, 0)
    }

    func test_optionalInteger_nonNilValue_fromString() {
        userDefaults.set("123", forKey: sutKey)
        let value = userDefaults.optionalInteger(forKey: sutKey)
        XCTAssertEqual(value, 123)
    }

    func test_optionalInteger_nonNilValue_fromInteger() {
        userDefaults.set(123, forKey: sutKey)
        let value = userDefaults.optionalInteger(forKey: sutKey)
        XCTAssertEqual(value, 123)
    }

    func test_optionalInteger_nonNilValue_fromFloatingPoint() {
        userDefaults.set(123.456, forKey: sutKey)
        let value = userDefaults.optionalInteger(forKey: sutKey)
        XCTAssertEqual(value, 123)
    }

    // MARK: - optionalFloat

    func test_optionalFloat_nilValue() {
        let value = userDefaults.optionalFloat(forKey: sutKey)
        XCTAssertNil(value)
    }

    func test_optionalFloat_nonNilValue_fromBoolean() {
        userDefaults.set(true, forKey: sutKey)
        var value = userDefaults.optionalFloat(forKey: sutKey)
        XCTAssertEqual(value, 1.0)

        userDefaults.set(false, forKey: sutKey)
        value = userDefaults.optionalFloat(forKey: sutKey)
        XCTAssertEqual(value, 0.0)
    }

    func test_optionalFloat_nonNilValue_fromString() {
        userDefaults.set("123.456", forKey: sutKey)
        let value = userDefaults.optionalFloat(forKey: sutKey)
        XCTAssertEqual(value, 123.456)
    }

    func test_optionalFloat_nonNilValue_fromInteger() {
        userDefaults.set(123, forKey: sutKey)
        let value = userDefaults.optionalFloat(forKey: sutKey)
        XCTAssertEqual(value, 123.0)
    }

    func test_optionalFloat_nonNilValue_fromFloatingPoint() {
        userDefaults.set(123.456, forKey: sutKey)
        let value = userDefaults.optionalFloat(forKey: sutKey)
        XCTAssertEqual(value, 123.456)
    }

    // MARK: - optionalDouble

    func test_optionalDouble_nilValue() {
        let value = userDefaults.optionalDouble(forKey: sutKey)
        XCTAssertNil(value)
    }

    func test_optionalDouble_nonNilValue_fromBoolean() {
        userDefaults.set(true, forKey: sutKey)
        var value = userDefaults.optionalDouble(forKey: sutKey)
        XCTAssertEqual(value, 1.0)

        userDefaults.set(false, forKey: sutKey)
        value = userDefaults.optionalDouble(forKey: sutKey)
        XCTAssertEqual(value, 0.0)
    }

    func test_optionalDouble_nonNilValue_fromString() {
        userDefaults.set("123.456", forKey: sutKey)
        let value = userDefaults.optionalDouble(forKey: sutKey)
        XCTAssertEqual(value, 123.456)
    }

    func test_optionalDouble_nonNilValue_fromInteger() {
        userDefaults.set(123, forKey: sutKey)
        let value = userDefaults.optionalDouble(forKey: sutKey)
        XCTAssertEqual(value, 123.0)
    }

    func test_optionalDouble_nonNilValue_fromFloatingPoint() {
        userDefaults.set(123.456, forKey: sutKey)
        let value = userDefaults.optionalDouble(forKey: sutKey)
        XCTAssertEqual(value, 123.456)
    }
}
