//
//  Bundle+BuildInformation.swift
//  
//
//  Created by Christian Wollny on 24.04.21.
//

import Foundation

public extension Bundle {
    var buildNumber: String {
        object(forInfoDictionaryKey: "CFBundleVersion") as! String
    }

    var shortVersion: String {
        object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }

    var version: String {
        "\(shortVersion) (\(buildNumber))"
    }

    var displayName: String {
        object(forInfoDictionaryKey: "CFBundleDisplayName") as! String
    }
}
