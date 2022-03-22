//
//  MainMenu.swift
//  Farm4
//
//  Created by Bryan Hue Ka Yuen on 2/13/19.
//  Copyright © 2019 Austin Collier. All rights reserved.
//

import Foundation
import SpriteKit
import AVFoundation
let font:String = "Chalkduster" //Global Variable for Fonts

class MainMenu: SKScene{
    
    let clickSound = SKAction.playSoundFileNamed("Click.wav", waitForCompletion: false)
    
    override func didMove(to view: SKView)
    {
        if startMoney.bool(forKey: "firstLaunch") == false //Checks to see if firstLaunch is True, if so add 10 to money for initial money
        {
            firstLaunch = true
            money = 10
            level = 1
            experience = 0
            startMoney.set(firstLaunch, forKey: "firstLaunch")
            playerData.set(money, forKey: "money")
            playerData.set(level, forKey: "level")
            playerData.set(experience, forKey: "experience")
        }
        
        let background = SKSpriteNode(imageNamed: "Background")
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let developer = SKLabelNode(fontNamed: font)
        developer.text = "Team Swift Presents"
        developer.fontSize = 100
        developer.fontColor = SKColor.white
        developer.position = CGPoint(x: self.size.width/2, y: self.size.height*0.90)
        developer.zPosition = 1
        self.addChild(developer)
        
        let mainTitle1 = SKLabelNode(fontNamed: font)
        mainTitle1.text = "Tap Farmer"
        mainTitle1.fontSize = 200
        
        if device.contains("X")
        {
            mainTitle1.fontSize = 170
        }
 
        mainTitle1.fontColor = SKColor.white
        mainTitle1.position = CGPoint(x: self.size.width/2, y: self.size.height*0.65)
        mainTitle1.zPosition = 1
        self.addChild(mainTitle1)
        
        
        let startButton = SKLabelNode(fontNamed : font)
        startButton.text = "S t a r t"
        startButton.fontSize = 200
        startButton.fontColor = SKColor.white
        startButton.position = CGPoint(x: self.size.width/2, y: self.size.height*0.40)
        startButton.zPosition = 1
        startButton.name = "startButton"
        self.addChild(startButton)
        
        let creditButton = SKLabelNode(fontNamed : font)
        creditButton.text = "C r e d i t s"
        creditButton.fontSize = 90
        creditButton.fontColor = SKColor.white
        creditButton.position = CGPoint(x: self.size.width/2, y: self.size.height*0.10)
        creditButton.zPosition = 1
        creditButton.name = "credit"
        self.addChild(creditButton)
        
        let description = SKLabelNode(fontNamed : font)
        description.text = "Grow All The Things!! :D"
        description.fontSize = 70
        description.fontColor = SKColor.white
        description.position = CGPoint(x: self.size.width/2, y: self.size.height*0.20)
        description.zPosition = 1
        self.addChild(description)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch: AnyObject in touches
        {
            let positionOfTouch = touch.location(in: self) //this was a little different
            let tappedNodes = nodes(at: positionOfTouch)   //this was different
            for tappedNode in tappedNodes
            {
                let startTappedNode = tappedNode.name
                if startTappedNode == "startButton"
                {
                    self.run(clickSound)
                    let sceneToMoveTo = GameScene(size: self.size)
                    sceneToMoveTo.scaleMode = self.scaleMode
                    let sceneTransition = SKTransition.fade(withDuration: 0.3)
                    self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
                }
                let creditTappedNode = tappedNode.name
                if creditTappedNode == "credit"
                {
                    self.run(clickSound)
                    let sceneToMoveTo = CreditScene(size: self.size)
                    sceneToMoveTo.scaleMode = self.scaleMode
                    let sceneTransition = SKTransition.fade(withDuration: 0.3)
                    self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
                }
            }
        }
    }
}
