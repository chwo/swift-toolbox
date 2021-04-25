//
//  Bundle+BuildInformation.swift
//  
//
//  Created by Christian Wollny on 24.04.21.
//

import Foundation

public extension Bundle {
    private func info(forKey key: String) -> String {
        object(forInfoDictionaryKey: key) as? String ?? ""
    }

    var buildNumber: String {
        info(forKey: "CFBundleVersion")
    }

    var shortVersion: String {
        info(forKey: "CFBundleShortVersionString")
    }

    var version: String {
        "\(shortVersion) (\(buildNumber))"
    }

    var displayName: String {
        info(forKey: "CFBundleDisplayName")
    }
}
