//
//  GameScene.swift
//  SpriteKit Demo
//
//  Created by Giselle Tavares on 2019-07-14.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let dogSpriteNode = SKSpriteNode(imageNamed: "Run0")
    var dogFrames = [SKTexture]()
    
    override func didMove(to view: SKView) {
        dogSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(dogSpriteNode)
        
        let textureAtlas = SKTextureAtlas(named: "Dog Frames")
        
        for index in 0..<textureAtlas.textureNames.count {
            let textureName = "Run" + String(index)
            dogFrames.append(textureAtlas.textureNamed(textureName))
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let _ = dogSpriteNode.action(forKey: "Move"){
            dogSpriteNode.removeAction(forKey: "Move")
        } else {
            dogSpriteNode.run(SKAction.repeatForever(SKAction.animate(with: dogFrames, timePerFrame: 0.1)), withKey: "Move")
        }
        
    }
    
    
    
    
    
    
    
    
//    let myFirstNode = SKNode()
//    let myFirstSpriteNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 200.0, height: 200.0))
//    let myFirstTexturesSpriteNode = SKSpriteNode(imageNamed: "Spaceship")
//    let blueBox = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100, height: 100))
//
//    override func didMove(to view: SKView) {
//        addChild(myFirstNode)
//
//        myFirstSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
//        myFirstSpriteNode.anchorPoint = CGPoint.zero
//        addChild(myFirstSpriteNode)
//
//        myFirstTexturesSpriteNode.zPosition = 1
//        myFirstTexturesSpriteNode.size = CGSize(width: 100, height: 100)
//        myFirstSpriteNode.addChild(myFirstTexturesSpriteNode)
//
//        blueBox.zPosition = 2
//        blueBox.position = CGPoint(x: myFirstSpriteNode.size.width/2, y: myFirstSpriteNode.size.width/2)
//        myFirstSpriteNode.addChild(blueBox)
//
//        physicsWorld.gravity = CGVector(dx: -1.0, dy: -2.0)
//        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
//
//        myFirstTexturesSpriteNode.physicsBody = SKPhysicsBody(circleOfRadius: myFirstTexturesSpriteNode.size.width/2)
//        myFirstTexturesSpriteNode.physicsBody!.allowsRotation = false
//        myFirstTexturesSpriteNode.physicsBody!.restitution = 1.0
//
//        blueBox.physicsBody = SKPhysicsBody(rectangleOf: blueBox.size)
//    }
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
////        myFirstTexturesSpriteNode.run(SKAction.move(to: CGPoint(x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.width), duration: 2.0))
////        blueBox.run(SKAction.rotate(byAngle: CGFloat(M_PI), duration: 2.0))
////        myFirstTexturesSpriteNode.run(SKAction.move(to: CGPoint(x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.width), duration: 2.0)){
////            self.myFirstTexturesSpriteNode.position = CGPoint.zero
////        }
////        if !blueBox.hasActions(){
//////            blueBox.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(M_PI), duration: 2.0)))
//////            blueBox.run(SKAction.group([SKAction.rotate(byAngle: CGFloat(M_PI), duration: 2.0), SKAction.scale(by: 0.9, duration: 2.0)]))
////            blueBox.run(SKAction.sequence([SKAction.rotate(byAngle: CGFloat(M_PI), duration: 2.0), SKAction.scale(by: 0.9, duration: 2.0)]))
////        } else {
////            blueBox.removeAllActions()
////        }
//
//        if let _ = myFirstTexturesSpriteNode.action(forKey: "Rotation"){
//            myFirstTexturesSpriteNode.removeAction(forKey: "Rotation")
//        } else {
//            myFirstTexturesSpriteNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(M_PI), duration: 2.0)), withKey: "Rotation")
//        }
//
//
//    }
}
