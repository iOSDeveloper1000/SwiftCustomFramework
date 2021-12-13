//
//  UIView.swift
//  SwiftCustomFramework
//
//  Created by Arno Seidel on 10.12.2021.
//  Copyright © 2021 Arno Seidel. All rights reserved.
//

import UIKit


public extension UIView {

    /**
     Make this view's frame fill the bounds of its superview according to the view hierarchy

     Use it like
     ```
     superview.addSubview(view)
     view.fillSuperview()
     ```
     */
    func fillSuperview() {
        guard let superview = self.superview else { return }

        translatesAutoresizingMaskIntoConstraints = superview.translatesAutoresizingMaskIntoConstraints

        if translatesAutoresizingMaskIntoConstraints {
            autoresizingMask = [.flexibleWidth, .flexibleHeight]
            frame = superview.bounds
        } else {
            topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
            bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
            leftAnchor.constraint(equalTo: superview.leftAnchor).isActive = true
            rightAnchor.constraint(equalTo: superview.rightAnchor).isActive = true
        }
    }
}
