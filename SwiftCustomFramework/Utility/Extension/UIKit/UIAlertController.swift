//
//  UIAlertController.swift
//  SwiftCustomFramework
//
//  Created by Arno Seidel on 10.12.2021.
//  Copyright © 2021 Arno Seidel. All rights reserved.
//

import UIKit


extension UIAlertController {

    /**
     Workaround for the enduring iOS bug with actionsheets described here: https://stackoverflow.com/a/58666480
     */
    func pruneNegativeWidthConstraints() {
        for subView in self.view.subviews {
            for constraint in subView.constraints where constraint.debugDescription.contains("width == - 16") {
                subView.removeConstraint(constraint)
            }
        }
    }
}
