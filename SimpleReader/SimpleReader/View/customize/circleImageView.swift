//
//  circleImageView.swift
//  SimpleReader
//
//  Created by Liyao on 2014/10/16.
//  Copyright (c) 2014年 HaveFun. All rights reserved.
//

import UIKit

// 1. 
@IBDesignable
class circleImageView: UIImageView {

    // 2. add property and override its setter
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
