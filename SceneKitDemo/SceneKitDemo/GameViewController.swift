//
//  GameViewController.swift
//  SceneKitDemo
//
//  Created by Giselle Tavares on 2019-07-29.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    var sceneView: SCNView!
    var scene: SCNScene!
    var cameraNode: SCNNode!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    func setupView(){
        sceneView = view as! SCNView
        sceneView.showsStatistics = true
        sceneView.allowsCameraControl = true
        sceneView.autoenablesDefaultLighting = true
        setupScene()
    }
    
    func setupScene(){
        scene = SCNScene()
        sceneView.scene = scene
        setupCamera()
    }
    
    func setupCamera(){
        cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 5)
        scene.rootNode.addChildNode(cameraNode)
        addSquare()
//        addSphere()
    }
    
    func addSphere(){
        let geometry = SCNSphere(radius: 1.0)
        let sphereNode = SCNNode(geometry: geometry)
        sphereNode.position = SCNVector3(x: 0, y: 1, z: 0)
        scene.rootNode.addChildNode(sphereNode)
    }
    
    func addSquare(){
        let geometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        let squareNode = SCNNode()
        squareNode.geometry = geometry
        squareNode.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
        scene.rootNode.addChildNode(squareNode)
        
        let force = SCNVector3(x: 0, y: 10, z: 0)
        let position = SCNVector3(x: 0.05, y: 0.05, z: 0.05)
//        squareNode.physicsBody?.applyForce(force, asImpulse: true)
        squareNode.physicsBody?.applyForce(position, at: force, asImpulse: true)
        
        let torqueForce = SCNVector4(x: 0, y: 0, z: 1, w: 1)
        squareNode.physicsBody?.applyTorque(torqueForce, asImpulse: true)
    }

}
