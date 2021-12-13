//
//  NSAttributedStringTransformer.swift
//  SwiftCustomFramework
//
//  Created by Arno Seidel on 10.12.2021.
//  Copyright © 2021 Arno Seidel. All rights reserved.
//

import CoreData


/**
 Workaround for the secure unarchiving of attributed strings as described in [](https://developer.apple.com/forums/thread/653853).
 */
@objc(NSAttributedStringTransformer)
public class NSAttributedStringTransformer: NSSecureUnarchiveFromDataTransformer {
    public override class var allowedTopLevelClasses: [AnyClass] {
        return super.allowedTopLevelClasses + [NSAttributedString.self]
    }
}
