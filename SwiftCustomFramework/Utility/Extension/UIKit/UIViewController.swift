//
//  UIViewController.swift
//  SwiftCustomFramework
//
//  Created by Arno Seidel on 10.12.2021.
//  Copyright © 2021 Arno Seidel. All rights reserved.
//

import UIKit


public extension UIViewController {

    // MARK: - Alert

    /**
     Constructs and presents an alert or action sheet to the user.

     Each action must be given exactly one title, one style and one action closure (can be _nil_). Each array must follow the same order of actions.
     - Parameter message: Title and body of the alert message.
     - Parameter alertStyle: Alert style: e.g. action sheet or alert.
     - Parameter actionTitles: Titles for all the actions.
     - Parameter actionStyles: Styles for all the actions.
     - Parameter actions: Closures that will be called for the different actions.
     */
    func alertUser(msg: Message, alertStyle: UIAlertController.Style, actionTitles: [String], actionStyles: [UIAlertAction.Style], actions: [((UIAlertAction) -> Void)?]) {

        let alertController = UIAlertController(title: msg.title, message: msg.body, preferredStyle: alertStyle)
        
        for(index, indexTitle) in actionTitles.enumerated() {
            
            let action = UIAlertAction(title: indexTitle, style: actionStyles[index], handler: actions[index])
            
            alertController.addAction(action)
        }

        // Workaround - See remark in UIAlertController extension.
        alertController.pruneNegativeWidthConstraints()
        
        present(alertController, animated: true)
    }
}
