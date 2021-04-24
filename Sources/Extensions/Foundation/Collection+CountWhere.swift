//
//  Collection+CountWhere.swift
//  
//
//  Created by Christian Wollny on 24.04.21.
//

import Foundation

extension Collection {
    /// Returns the number of elements in the collection that satisfy the given predicate.
    ///
    /// - Parameter predicate: A closure that takes an element of the
    ///   sequence as its argument and returns a Boolean value indicating
    ///   whether the element should be counted.
    ///
    /// - Returns: The number of elements matching the `predicate`.
    ///
    /// - Complexity: O(*n*), where *n* is the length of the sequence.
    public func count(where predicate: (Element) throws -> Bool) rethrows -> Int {
        return try self.filter(predicate).count
    }
}
