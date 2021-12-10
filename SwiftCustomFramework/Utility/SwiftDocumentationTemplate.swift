//
//  SwiftDocumentationTemplate.swift
//  SwiftCustomFramework
//
//  Created by Arno Seidel on 10.12.2021.
//  Copyright © 2021 Arno Seidel. All rights reserved.
//

import Foundation


/**
 A template class showing examples of how documentation in Swift works.

 _Some more details about using a class are dicussed here._
 */
class SwiftDocumentationTemplate {

    // MARK: - Variables

    /**
     A counter variable for the number of new entries.

     Make sure to update it with each entry addition and release.
     */
    var counter: Int = 0


    // MARK: - Functions

    // Copied from this answer https://stackoverflow.com/a/27766320 on May 6th 2021
    /**
     This function returns a welcoming string for a given `subject`.

     You can use it like:
     ```
     print(hello("World")) // Hello, World!
     ```
     - Warning: The returned string is not localized.
     - Parameter subject: The subject to be welcomed.
     - Parameter newCount: The number of newly added entries.
     - Returns: A hello string to the `subject`.
     */
    func hello(_ subject: String, newCount: Int) -> String {
        counter += newCount

        // TODO: Add some processing here.

        // FIXME: Add support for different languages.
        return "Hello, \(subject)!"
    }
}
