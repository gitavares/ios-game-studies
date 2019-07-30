//
//  GameViewController.swift
//  SpriteKit Demo
//
//  Created by Giselle Tavares on 2019-07-14.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "MyFirstTilemapScene"){
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
                
                
                view.ignoresSiblingOrder = true
                
                view.showsFPS = true
                view.showsNodeCount = true
                view.showsPhysics = true
            }
        }
    }

}
