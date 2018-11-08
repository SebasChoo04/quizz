//
//  Button.swift
//  Quizz
//
//  Created by Sebastian Choo on 9/11/18.
//  Copyright © 2018 SebastianChoo.Co. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CustomButton: UIButton {
    
    @IBInspectable var CornerRadius: CGFloat = 16.0 {
        didSet {
            layer.cornerRadius = 16
        }
    }
    override public func layoutSubviews() {
        super.layoutSubviews()
        clipsToBounds = true
    }
}
