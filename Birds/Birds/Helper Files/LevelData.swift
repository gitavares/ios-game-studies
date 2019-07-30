//
//  LevelData.swift
//  Birds
//
//  Created by Giselle Tavares on 2019-07-26.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import Foundation

struct LevelData {
    let birds: [String]
    
    init?(level: Int) {
        guard let levelDictionary = Levels.levelsDictionary["Level_\(level)"] as? [String:Any] else {
            return nil
        }
        
        guard let birds = levelDictionary["Birds"] as? [String] else {
            return nil
        }
        
        self.birds = birds
    }
}
