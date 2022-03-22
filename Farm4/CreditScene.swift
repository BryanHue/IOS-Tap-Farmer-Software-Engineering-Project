//
//  CreditScene.swift
//  Farm4
//
//  Created by Bryan Hue Ka Yuen on 2/13/19.
//  Copyright © 2019 Austin Collier. All rights reserved.
//

import Foundation
import SpriteKit

class CreditScene: SKScene{
    
    var preferedMaxLayoutWidth = 1
    let clickSound = SKAction.playSoundFileNamed("Click.wav", waitForCompletion: false)
    
    override func didMove(to view: SKView)
    {
        let creditBackground = SKSpriteNode(imageNamed: "Background")
        creditBackground.size = self.size
        creditBackground.position = CGPoint (x: self.size.width/2, y: self.size.height/2)
        creditBackground.zPosition = 0
        self.addChild(creditBackground)
        
        let returnButton = SKLabelNode(fontNamed: font)
        returnButton.text = "Return"
        returnButton.fontSize = 100
        returnButton.fontColor = SKColor.white
        returnButton.position = CGPoint(x: self.size.width/2, y: self.size.height*0.1)
        returnButton.zPosition = 1
        returnButton.name = "return"
        self.addChild(returnButton)
        
        let credits1 = SKLabelNode(fontNamed: font)
        credits1.text = "Contributors:"
        credits1.fontSize = 120
        credits1.fontColor = SKColor.white
        credits1.position = CGPoint(x: self.size.width/2, y: self.size.height*0.90)
        credits1.zPosition = 1
        self.addChild(credits1)
        
        let contributor1 = SKLabelNode(fontNamed: font)
        contributor1.text = "- Austin Collier"
        contributor1.fontSize = 100
        contributor1.fontColor = SKColor.white
        contributor1.position = CGPoint(x: self.size.width/2, y: self.size.height*0.85)
        contributor1.zPosition = 1
        self.addChild(contributor1)
        
        let contributor2 = SKLabelNode(fontNamed: font)
        contributor2.text = "- Bryan Hue"
        contributor2.fontSize = 100
        contributor2.fontColor = SKColor.white
        contributor2.position = CGPoint(x: self.size.width/2, y: self.size.height*0.80)
        contributor2.zPosition = 1
        self.addChild(contributor2)
        
        let creditBody1 = SKLabelNode(fontNamed: font)
        creditBody1.text = "This game was developed as a project for"
        creditBody1.fontSize = 60
        creditBody1.fontColor = SKColor.white
        creditBody1.position = CGPoint(x: self.size.width/2, y: self.size.height*0.70)
        creditBody1.zPosition = 1
        
        
        let creditBody2 = SKLabelNode(fontNamed: font)
        creditBody2.text = "Software Engineering"
        creditBody2.fontSize = 60
        creditBody2.fontColor = SKColor.white
        creditBody2.position = CGPoint(x: self.size.width/2, y: self.size.height*0.65)
        creditBody2.zPosition = 1
        
        
        if device.contains("X")
        {
            creditBody1.text = "This game was developed as a"
            creditBody2.text = "project for Software Engineering"
        }
        
        self.addChild(creditBody1)
        self.addChild(creditBody2)
        
        let version = SKLabelNode(fontNamed: font)
        version.text = "Version 0.1"
        version.fontSize = 40
        version.fontColor = SKColor.white
        version.position = CGPoint(x: self.size.width/2, y: self.size.height*0.05)
        version.zPosition = 1
        self.addChild(version)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch: AnyObject in touches
        {
            let positionOfTouch = touch.location(in: self)
            let tappedNodes = nodes(at: positionOfTouch)
            for tappedNode in tappedNodes
            {
                let returnTappedNode = tappedNode.name
                if returnTappedNode == "return"
                {
                    self.run(clickSound)
                    let sceneToMoveTo = MainMenu(size: self.size)
                    sceneToMoveTo.scaleMode = self.scaleMode
                    let sceneTransition = SKTransition.fade(withDuration: 0.3)
                    self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
                }
            }
        }
        
    }
}
