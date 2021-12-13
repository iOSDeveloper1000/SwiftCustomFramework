//
//  BasicTypes.swift
//  SwiftCustomFramework
//
//  Created by Arno Seidel on 10.12.2021.
//  Copyright © 2021 Arno Seidel. All rights reserved.
//

import Foundation


// MARK: Basic Type Extensions

public extension Bool {

    /**
     Executes a boolean XOR operation.

     - Returns: _True_ if the operands are not equal, otherwise _false_.
     */
    static func ^ (left: Bool, right: Bool) -> Bool {
        return left != right
    }
}
