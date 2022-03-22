//
//  AchievementScene.swift
//  Farm4
//
//  Created by Bryan Hue Ka Yuen on 3/20/19.
//  Copyright © 2019 Austin Collier. All rights reserved.
//

import Foundation
import SpriteKit

class AchievementScene : SKScene
{
    let returnButton = SKLabelNode(fontNamed: font)
    let cropLabel = SKLabelNode(fontNamed: font)
    let expLabel = SKLabelNode(fontNamed: font)
    let moneyLabel = SKLabelNode(fontNamed: font)
    
    let menuBackground = SKSpriteNode()
    let menuShadow = SKSpriteNode()
    let plotBackground = SKSpriteNode()
    
    override func didMove(to view: SKView)
    {
        menuShadow.texture = SKTexture(imageNamed: "black")
        menuShadow.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        menuShadow.zPosition = 6
        menuShadow.size = self.size
        menuShadow.alpha = 0.65
        self.addChild(menuShadow)
        
        menuBackground.texture = SKTexture(imageNamed: "empty")
        menuBackground.position = CGPoint(x: self.size.width/2, y: self.size.height*0.43)
        menuBackground.zPosition = 7
        menuBackground.name = "growingMenuBG"
        menuBackground.size = CGSize(width: self.size.width*0.65, height: self.size.height*0.3)
        self.addChild(menuBackground)
        
        plotBackground.texture = SKTexture(imageNamed: "Background")
        plotBackground.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        plotBackground.zPosition = 0
        plotBackground.size = self.size
        self.addChild(plotBackground)
        
        returnButton.text = "Return"
        returnButton.fontSize = 100
        returnButton.fontColor  = SKColor.white
        returnButton.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.33)
        returnButton.zPosition = 8
        returnButton.name = "Return"
        self.addChild(returnButton)
        
        cropLabel.text = String("Crops Grown: \(playerData.integer(forKey: "cropGrown"))")
        cropLabel.fontSize = 90
        cropLabel.fontColor  = SKColor.white
        cropLabel.position = CGPoint(x: self.size.width*0.50, y: self.size.height*0.53)
        cropLabel.zPosition = 8
        cropLabel.name = "cropLabel"
        self.addChild(cropLabel)
        
        expLabel.text = String("Total Exp: \(playerData.integer(forKey: "experience"))")
        expLabel.fontSize = 90
        expLabel.fontColor  = SKColor.white
        expLabel.position = CGPoint(x: self.size.width*0.50, y: self.size.height*0.48)
        expLabel.zPosition = 8
        expLabel.name = "expLabel"
        self.addChild(expLabel)
        
        moneyLabel.text = String("Money Earned: $\(playerData.integer(forKey: "totalMoney"))")
        moneyLabel.fontSize = 90
        moneyLabel.fontColor  = SKColor.white
        moneyLabel.position = CGPoint(x: self.size.width*0.50, y: self.size.height*0.43)
        moneyLabel.zPosition = 8
        moneyLabel.name = "moneyLabel"
        self.addChild(moneyLabel)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch: AnyObject in touches
        {
            let positionOfTouch = touch.location(in: self)
        
            if returnButton.contains(positionOfTouch) == true
            {
                let sceneToMoveTo = GameScene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let sceneTransition = SKTransition.fade(withDuration: 0.01)
                self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
            }
        }
    }
}
