//
//  BorderButton.swift
//  loveit
//
//  Created by takumi.kashima on 9/10/16.
//  Copyright © 2016 UNUUU. All rights reserved.
//

import UIKit

@IBDesignable class BorderButton : UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0
    @IBInspectable var borderColor: UIColor = UIColor.whiteColor()
    @IBInspectable var borderWidth: CGFloat = 0
    
    override func drawRect(rect: CGRect) {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor.CGColor
        self.layer.borderWidth = borderWidth
        super.drawRect(rect)
    }
}