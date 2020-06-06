//
//  GameScene.swift
//  ColorGame
//
//  Created by Jamie vullo on 6/5/20.
//  Copyright © 2020 Jamie vullo. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var tracksArray:[SKSpriteNode]? = [SKSpriteNode]()
    
    func setupTracks(){
        for i in 0 ... 8 {
            if let track = self.childNode(withName: "\(i)") as? SKSpriteNode {
                tracksArray?.append(track)
            }
            
        }
    }
    
    
    override func didMove(to view: SKView) {
        setupTracks()
        
        tracksArray?.first?.color = UIColor.green
    }
    
    
   
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
