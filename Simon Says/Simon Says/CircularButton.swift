//
//  CircularButton.swift
//  Simon Says
//
//  Created by Giselle Tavares on 2019-07-14.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import UIKit

class CircularButton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = frame.size.width/2
        layer.masksToBounds = true
        
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                alpha = 1.0
            } else {
                alpha = 0.5
            }
        }
    }

}
