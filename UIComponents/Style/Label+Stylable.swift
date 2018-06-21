//
//  Label+Stylable.swift
//  uiComponents
//
//  Created by Alex Kisel on 6/9/18.
//  Copyright © 2018 Alex Kisel. All rights reserved.
//

import UIKit

extension UILabel {
    
    func apply(style: LabelStyle) {
        numberOfLines = style.numberOfLines ?? 1
        textColor = style.textColor
        textAlignment = style.textAlignment ?? .left
        font = style.font
        apply(style: style as ViewStyle)
    }
}


