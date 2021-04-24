//
//  UserDefaults+OptionalGetters.swift
//  
//
//  Created by Christian Wollny on 24.04.21.
//

import Foundation

public extension UserDefaults {
    // Only use `object(forKey:)` for nil-checking and then use the respective getter method instead of type casting the object.
    // This is done to ensure that the new method has the same "converting" behaviour as the original getter method.
    // The original getter methods automatically do coerce certain values into the equivalent target values (see documentation of each method).

    func optionalBool(forKey key: String) -> Bool? {
        guard self.object(forKey: key) != nil else {
            return nil
        }
        return self.bool(forKey: key)
    }

    func optionalInteger(forKey key: String) -> Int? {
        guard self.object(forKey: key) != nil else {
            return nil
        }
        return self.integer(forKey: key)
    }

    func optionalFloat(forKey key: String) -> Float? {
        guard self.object(forKey: key) != nil else {
            return nil
        }
        return self.float(forKey: key)
    }

    func optionalDouble(forKey key: String) -> Double? {
        guard self.object(forKey: key) != nil else {
            return nil
        }
        return self.double(forKey: key)
    }
}
