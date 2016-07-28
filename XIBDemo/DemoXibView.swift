//
//  DemoXibView.swift
//  XIBDemo
//
//  Created by YC on 16/7/28.
//  Copyright © 2016年 YC. All rights reserved.
//

import UIKit



@IBDesignable class DemoXibView: XibBaseView {

    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable
    var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.CGColor
        }
    }
    
}
