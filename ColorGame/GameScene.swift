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
    var player:SKSpriteNode?
    
    func setupTracks(){
        for i in 0 ... 8 {
            if let track = self.childNode(withName: "\(i)") as? SKSpriteNode {
                tracksArray?.append(track)
            }
            
        }
    }

    func createPlayer() {
        player = SKSpriteNode(imageNamed: "player")
        guard let playerPosition = tracksArray?.first?.position.x else {return}
        player?.position = CGPoint(x: playerPosition, y: self.size.height / 2)
        
        self.addChild(player!)
    }
    
    override func didMove(to view: SKView) {
        setupTracks()
        createPlayer()
        
//        tracksArray?.first?.color = UIColor.green
    }
    
    
   
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
