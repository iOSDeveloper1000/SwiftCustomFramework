//
//  Operators.swift
//  SwiftCustomFramework
//
//  Created by Arno Seidel on 10.12.2021.
//  Copyright © 2021 Arno Seidel. All rights reserved.
//

import Foundation


// MARK: - String Operators

/**
 Custom postfix operator for localized strings -- shortcut notation.
 */
postfix operator ~
postfix func ~(string: String) -> String {
    return NSLocalizedString(string, comment: "")
}


/**
 Custom infix operator for localized strings with exactly one placeholder -- shortcut notation.
 */
infix operator ~
func ~(string: String, insert: String) -> String {
    let localized = NSLocalizedString(string, comment: "")

    return String.localizedStringWithFormat(localized, insert)
}
