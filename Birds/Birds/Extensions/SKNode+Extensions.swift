//
//  SKNode+Extensions.swift
//  Birds
//
//  Created by Giselle Tavares on 2019-07-25.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import SpriteKit

extension SKNode {
    func aspectScale(to size: CGSize, width: Bool, multiplier: CGFloat) {
        let scale = width ? (size.width * multiplier) / self.frame.size.width : (size.height * multiplier) / self.frame.size.height
        
        self.setScale(scale)
    }
}
