//
//  View+Stylable.swift
//  uiComponents
//
//  Created by Alex Kisel on 6/9/18.
//  Copyright © 2018 Alex Kisel. All rights reserved.
//

import UIKit

extension UIView {
    
   open func apply(style: ViewStyle) {
        contentMode = style.contentMode ?? UIViewContentMode.scaleAspectFit
        backgroundColor = style.backgroundColor ?? .white
        clipsToBounds = (style.cornerRadius ?? 0) > 0.0 || clipsToBounds == true
        layer.cornerRadius = style.cornerRadius ?? 0
    }
}
