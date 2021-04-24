//
//  Collection+CountWhereTests.swift
//  
//
//  Created by Christian Wollny on 24.04.21.
//

import XCTest
import SwiftToolbox

final class Collection_CountWhereTests: XCTestCase {
    func test_emptyCollection() {
        let elements: [String] = []
        let count = elements.count(where: { $0 == "a" })

        XCTAssertEqual(count, 0, "The count of elements in an empty collection should be '0'!")
    }

    func test_noMatchInCollection() {
        let elements = ["a", "b", "c"]
        let count = elements.count(where: { $0 == "y" })

        XCTAssertEqual(count, 0, "There are no 'y' elements in the collection so the count should be '0'!")
    }

    func test_oneMatchInCollection() {
        let elements = ["a", "b", "c"]
        let count = elements.count(where: { $0 == "b" })

        XCTAssertEqual(count, 1)
    }

    func test_multipleMatchesInCollection() {
        let elements = ["a", "b", "b", "c"]
        let count = elements.count(where: { $0 == "b" })

        XCTAssertEqual(count, 2)
    }
}
