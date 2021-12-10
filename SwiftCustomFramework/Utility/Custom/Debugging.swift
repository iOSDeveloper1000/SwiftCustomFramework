//
//  Debugging.swift
//  SwiftCustomFramework
//
//  Created by Arno Seidel on 10.12.2021.
//  Copyright © 2021 Arno Seidel. All rights reserved.
//


/**
 Tracks code execution at runtime

 Use it like
 ```Swift
 track(/*your message*/)
 ```
 from any position in code in order to print:
 _Your message - called from functionname filename:line._
*/
public func track(_ message: String, file: String = #file, function: String = #function, line: Int = #line ) {
    print("\(message) - called from \(function) \(file):\(line).")
}
