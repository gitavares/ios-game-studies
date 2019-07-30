//
//  Settings.swift
//  ColorSwitch
//
//  Created by Giselle Tavares on 2019-07-19.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import SpriteKit

enum PhysicsCategories {
    static let none: UInt32 = 0
    static let ballCategory: UInt32 = 0x1        // 01 (zero one)
    static let switchCategory: UInt32 = 0x1 << 1 // 10 (one zero)
}

enum ZPositions {
    static let label: CGFloat = 0
    static let ball: CGFloat = 1
    static let colorSwitch: CGFloat = 2
}
