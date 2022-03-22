//
//  GrowingScene.swift
//  Farm4
//
//  Created by Bryan Hue Ka Yuen on 3/18/19.
//  Copyright © 2019 Austin Collier. All rights reserved.
//

import Foundation
import SpriteKit


class GrowingScene : SKScene
{
    //Button
    let growingCancelButton = SKLabelNode(fontNamed: font)
    let growingDestroyButton = SKLabelNode(fontNamed: font)
    let secondsLeftLabel = SKLabelNode(fontNamed: font)
    //labels
    let timeLeftLabel = SKLabelNode(fontNamed: font)
    let growingMenuBG = SKSpriteNode()
    let menuShadow = SKSpriteNode()
    var currentTime = Int()
    var timeElapsed = Int()
    var timeLeft = Int()
    var itemIMG = SKSpriteNode()
    var id = String()
    
    override func didMove(to view: SKView) {
        
        //Declaring Button
        growingCancelButton.text = "Cancel"
        growingCancelButton.fontSize = 100
        growingCancelButton.fontColor  = SKColor.white
        growingCancelButton.position = CGPoint(x: self.size.width*0.30, y: self.size.height*0.33)
        growingCancelButton.zPosition = 8
        growingCancelButton.name = "cancel"
        
        
        growingDestroyButton.text = "Destroy"
        growingDestroyButton.fontSize = 100
        growingDestroyButton.fontColor = SKColor.white
        growingDestroyButton.position = CGPoint(x: self.size.width*0.70, y: self.size.height*0.33)
        growingDestroyButton.zPosition = 8
        growingDestroyButton.name = "destroy"
        
        
        //Background setup
        let background = SKSpriteNode(imageNamed: "Background")
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let topBar = SKSpriteNode(imageNamed: "gray")
        topBar.size = CGSize(width: self.size.width, height: 500)
        topBar.position = CGPoint(x: self.size.width/2, y: self.size.height * 0.99)
        topBar.zPosition = 10
        self.addChild(topBar)
        
        menuShadow.texture = SKTexture(imageNamed: "black")
        menuShadow.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        menuShadow.zPosition = 6
        menuShadow.size = self.size
        menuShadow.alpha = 0.65
        
        
        growingMenuBG.texture = SKTexture(imageNamed: "empty")
        growingMenuBG.position = CGPoint(x: self.size.width/2, y: self.size.height*0.43)
        growingMenuBG.zPosition = 7
        growingMenuBG.name = "growingMenuBG"
        growingMenuBG.size = CGSize(width: self.size.width*0.65, height: self.size.height*0.3)
        
        
        currentTime = Int(CFAbsoluteTimeGetCurrent())
        timeElapsed = currentTime - plotTime.integer(forKey: plotTappedTime)
        getTimeLeft()
        timeLeftLabel.text = "\(timeLeft)"
        timeLeftLabel.fontSize = 100
        timeLeftLabel.fontColor  = SKColor.white
        timeLeftLabel.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.47)
        timeLeftLabel.zPosition = 8
        timeLeftLabel.name = "timeLeftLabel"
        
        
        secondsLeftLabel.text = "Time Left "
        secondsLeftLabel.fontSize = 100
        secondsLeftLabel.fontColor  = SKColor.white
        secondsLeftLabel.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.52)
        secondsLeftLabel.zPosition = 8
        secondsLeftLabel.name = "secondsLeftLabel"
        
        
        itemIMG.position = CGPoint(x: self.size.width/2, y: self.size.height*0.40)
        itemIMG.zPosition = 8
        itemIMG.name = "itemIMG"
        itemIMG.size = CGSize(width: self.size.width/12, height: self.size.width/12)
        switch(plotInfo.integer(forKey: plotTapped))
        {
        case 1,2:
            itemIMG.texture = SKTexture(imageNamed: "Strawberry")
        case 3,4:
            itemIMG.texture = SKTexture(imageNamed: "Tomato")
        case 5,6:
            itemIMG.texture = SKTexture(imageNamed: "Onion")
        case 7,8:
            itemIMG.texture = SKTexture(imageNamed: "Cucumber")
        case 9,10:
            itemIMG.texture = SKTexture(imageNamed: "Broccoli")
        case 11,12:
            itemIMG.texture = SKTexture(imageNamed: "Watermelon")
        case 13,14:
            itemIMG.texture = SKTexture(imageNamed: "HotPepper")
        case 15,16:
            itemIMG.texture = SKTexture(imageNamed: "Beans")
        case 17,18:
            itemIMG.texture = SKTexture(imageNamed: "Corn")
        case 19,20:
            itemIMG.texture = SKTexture(imageNamed: "Pepper")
        case 21,22:
            itemIMG.texture = SKTexture(imageNamed: "Carrot")
        case 23,24:
            itemIMG.texture = SKTexture(imageNamed: "Cabbage")
        default:
            itemIMG.texture = SKTexture(imageNamed: "Field_Seeds")
        }
        
        
        if device.contains("X")
        {
            growingMenuBG.size = CGSize(width: self.size.width*0.55, height: self.size.height*0.3)
            growingCancelButton.position = CGPoint(x: self.size.width*0.35, y: self.size.height*0.33)
            growingDestroyButton.position = CGPoint(x: self.size.width*0.65, y: self.size.height*0.33)
        }
      
        self.addChild(secondsLeftLabel)
        self.addChild(itemIMG)
        self.addChild(growingCancelButton)
        self.addChild(timeLeftLabel)
        self.addChild(growingMenuBG)
        self.addChild(menuShadow)
        self.addChild(growingDestroyButton)
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(GrowingScene.label), userInfo: nil, repeats: true)
    }
    
    
    func getTimeLeft()
    {
        switch(plotInfo.integer(forKey: plotTapped))
        {
        case 1,2:
            timeLeft = strawTime - timeElapsed
        case 3,4:
            timeLeft = tomatoTime - timeElapsed
        case 5,6:
            timeLeft = onionTime - timeElapsed
        case 7,8:
            timeLeft = cucumberTime - timeElapsed
        case 9,10:
            timeLeft = brocolliTime - timeElapsed
        case 11,12:
            timeLeft = watermelonTime - timeElapsed
        case 13,14:
            timeLeft = hotPepperTime - timeElapsed
        case 15,16:
            timeLeft = beansTime - timeElapsed
        case 17,18:
            timeLeft = cornTime - timeElapsed
        case 19,20:
            timeLeft = pepperTime - timeElapsed
        case 21,22:
            timeLeft = carrotTime - timeElapsed
        case 23,24:
            timeLeft = cabbageTime - timeElapsed
        default:
            timeLeft = 0
        }
    }
    
    
    
    @objc func label(timer:Timer)
    {
        currentTime = Int(CFAbsoluteTimeGetCurrent())
        timeElapsed = currentTime - plotTime.integer(forKey: plotTappedTime)
        getTimeLeft()
        timeLeftLabel.text = "\(timeLeft)"
        if timeLeft == 0
        {
            let sceneToMoveTo = GameScene(size: self.size)
            sceneToMoveTo.scaleMode = self.scaleMode
            self.view?.presentScene(sceneToMoveTo)
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch: AnyObject in touches
        {
            let positionOfTouch = touch.location(in: self)
            
            
            if growingCancelButton.contains(positionOfTouch) == true
            {
                let sceneToMoveTo = GameScene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let sceneTransition = SKTransition.fade(withDuration: 0.01)
                self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
            }
            
            if growingDestroyButton.contains(positionOfTouch) == true
            {
                plotInfo.set(0, forKey: plotTapped)
                cropTapped.texture = SKTexture(imageNamed: "Field_Seeds")
                cropTapped.alpha = 0
                let sceneToMoveTo = GameScene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let sceneTransition = SKTransition.fade(withDuration: 0.01)
                self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
            }
        }
    }
}
