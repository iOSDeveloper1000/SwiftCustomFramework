//
//  Notification.swift
//  SwiftCustomFramework
//
//  Created by Arno Seidel on 10.12.2021.
//  Copyright © 2021 Arno Seidel. All rights reserved.
//

import Foundation


/**
 Type for handling local notifications.
 */
public struct Notification {

    /**
     Unique identifier for the notification.

     _Warning_: Be careful. Uniqueness is not checked! This way, a former notification can be overwritten.
     */
    var id: String

    /**
     Message text to be printed when the notification is triggered.
     */
    var body: String

    /**
     Date components to be used as a trigger condition.
     */
    var dateTime: DateComponents


    /**
     Constructs a local notification object.

     - Parameter id: Unique identifier for the notification.
     - Parameter body: Message text to be printed with notification being triggered.
     - Parameter dateTime: Date components to be used as a trigger condition.
     */
    public init(
        id: String,
        body: String,
        dateTime: DateComponents)
    {
        self.id = id
        self.body = body
        self.dateTime = dateTime
    }
}
