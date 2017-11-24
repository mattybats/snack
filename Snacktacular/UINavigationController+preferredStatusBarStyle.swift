//
//  UINavigationController+preferredStatusBarStyle.swift
//  Snacktacular
//
//  Created by John Gallaugher on 11/24/17.
//  Copyright © 2017 John Gallaugher. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
    }
}

