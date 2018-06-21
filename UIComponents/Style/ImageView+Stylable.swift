//
//  ImageView+Stylable.swift
//  uiComponents
//
//  Created by Alex Kisel on 6/9/18.
//  Copyright © 2018 Alex Kisel. All rights reserved.
//

import UIKit

extension UIImageView {
    
   open func apply(style: ImageViewStyle) {
        apply(style: style as ViewStyle)
    }
}
