//
//  GameCamera.swift
//  Birds
//
//  Created by Giselle Tavares on 2019-07-21.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import SpriteKit

class GameCamera: SKCameraNode {
    
    func setConstraints(with scene: SKScene, and frame: CGRect, to node: SKNode?) {
        let scaledSize = CGSize(width: scene.size.width * xScale, height: scene.size.height * yScale)
        let borderContentRect = frame
        
        let xInset = min(scaledSize.width/2, borderContentRect.width/2)
        let yInset = min(scaledSize.height/2, borderContentRect.height/2)
        let insetContentRect = borderContentRect.insetBy(dx: xInset, dy: yInset)

        let xRange = SKRange(lowerLimit: insetContentRect.minX, upperLimit: insetContentRect.maxX)
        let yRange = SKRange(lowerLimit: insetContentRect.minY, upperLimit: insetContentRect.maxY)
        let levelEdgeConstraint = SKConstraint.positionX(xRange, y: yRange)
        
        if let node = node {
            let zeroRange = SKRange(constantValue: 0.0)
            let positionConstraint = SKConstraint.distance(zeroRange, to: node)
            constraints = [positionConstraint, levelEdgeConstraint]
        } else {
            constraints = [levelEdgeConstraint]
        }
        
        
    }
    
}
