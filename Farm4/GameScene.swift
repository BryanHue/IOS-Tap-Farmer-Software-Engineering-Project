//
//  GameScene.swift
//  Farm4
//
//  Created by Austin Collier on 2/13/19.
//  Copyright © 2019 Austin Collier. All rights reserved.
//

import SpriteKit
import GameplayKit


class GameScene: SKScene
{
    let backButton = SKLabelNode(fontNamed: font)
    let expLabel = SKLabelNode(fontNamed: font)
    let levelLabel = SKLabelNode(fontNamed: font)
    let levelNum = SKLabelNode(fontNamed: font)
    let moneyLabel = SKLabelNode(fontNamed: font)
    var time = 0
    var currentTime = Int()
    var timeElapsed = Int()
    let clickSound = SKAction.playSoundFileNamed("Click.wav", waitForCompletion: false)
    let sellSound = SKAction.playSoundFileNamed("cash-register-01.wav", waitForCompletion: false)
    var expBarWidth = CGFloat()
    var expPercent = CGFloat()
    let expBarBG = SKSpriteNode()
    let expBar = SKSpriteNode()
    
    override func didMove(to view: SKView)
    {
        
        let gapSize = self.size.width/20
        let plotWidth = self.size.width/6
        let plotHeight = self.size.height/17
        
        let col2 = self.size.width/2
        let col1 = col2-plotWidth/2 - gapSize/2
        let col0 = col1-plotWidth/2 - gapSize/2
        let col3 = col2+plotWidth/2 + gapSize/2
        let col4 = col3+plotWidth/2 + gapSize/2
        let row0 = (self.size.height*0.05) + (plotHeight)*0.5+(gapSize * 0.5)
        let row1 = row0+gapSize/2; let row2 = row1+gapSize/2
        let row3 = row2+gapSize/2; let row4 = row3+gapSize/2
        let row5 = row4+gapSize/2; let row6 = row5+gapSize/2
        let row7 = row6+gapSize/2; let row8 = row7+gapSize/2
        let row9 = row8+gapSize/2; let row10 = row9+gapSize/2
        let row11 = row10+gapSize/2
        
        let background = SKSpriteNode(imageNamed: "Background")
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let topBar = SKSpriteNode(imageNamed: "gray")
        topBar.size = CGSize(width: self.size.width, height: 500)
        topBar.position = CGPoint(x: self.size.width/2, y: self.size.height * 0.99)
        topBar.zPosition = 15
        self.addChild(topBar)
        
        plot00.position = CGPoint(x: col0, y: row0)
        plot01.position = CGPoint(x: col0, y: row1 + plotHeight)
        plot02.position = CGPoint(x: col0, y: row2 + plotHeight*2)
        plot03.position = CGPoint(x: col0, y: row3 + plotHeight*3)
        plot04.position = CGPoint(x: col0, y: row4 + plotHeight*4)
        plot05.position = CGPoint(x: col0, y: row5 + plotHeight*5)
        plot06.position = CGPoint(x: col0, y: row6 + plotHeight*6)
        plot07.position = CGPoint(x: col0, y: row7 + plotHeight*7)
        plot08.position = CGPoint(x: col0, y: row8 + plotHeight*8)
        plot09.position = CGPoint(x: col0, y: row9 + plotHeight*9)
        
        plot10.position = CGPoint(x: col1, y: row1 + plotHeight*0.5)
        plot11.position = CGPoint(x: col1, y: row2 + plotHeight*1.5)
        plot12.position = CGPoint(x: col1, y: row3 + plotHeight*2.5)
        plot13.position = CGPoint(x: col1, y: row4 + plotHeight*3.5)
        plot14.position = CGPoint(x: col1, y: row5 + plotHeight*4.5)
        plot15.position = CGPoint(x: col1, y: row6 + plotHeight*5.5)
        plot16.position = CGPoint(x: col1, y: row7 + plotHeight*6.5)
        plot17.position = CGPoint(x: col1, y: row8 + plotHeight*7.5)
        plot18.position = CGPoint(x: col1, y: row9 + plotHeight*8.5)
        
        plot20.position = CGPoint(x: col2, y: row1)
        plot21.position = CGPoint(x: col2, y: row2 + plotHeight)
        plot22.position = CGPoint(x: col2, y: row3 + plotHeight*2)
        plot23.position = CGPoint(x: col2, y: row4 + plotHeight*3)
        plot24.position = CGPoint(x: col2, y: row5 + plotHeight*4)
        plot25.position = CGPoint(x: col2, y: row6 + plotHeight*5)
        plot26.position = CGPoint(x: col2, y: row7 + plotHeight*6)
        plot27.position = CGPoint(x: col2, y: row8 + plotHeight*7)
        plot28.position = CGPoint(x: col2, y: row9 + plotHeight*8)
        plot29.position = CGPoint(x: col2, y: row10 + plotHeight*9)
        
        plot30.position = CGPoint(x: col3, y: row2 + plotHeight*0.5)
        plot31.position = CGPoint(x: col3, y: row3 + plotHeight*1.5)
        plot32.position = CGPoint(x: col3, y: row4 + plotHeight*2.5)
        plot33.position = CGPoint(x: col3, y: row5 + plotHeight*3.5)
        plot34.position = CGPoint(x: col3, y: row6 + plotHeight*4.5)
        plot35.position = CGPoint(x: col3, y: row7 + plotHeight*5.5)
        plot36.position = CGPoint(x: col3, y: row8 + plotHeight*6.5)
        plot37.position = CGPoint(x: col3, y: row9 + plotHeight*7.5)
        plot38.position = CGPoint(x: col3, y: row10 + plotHeight*8.5)
        
        plot40.position = CGPoint(x: col4, y: row2)
        plot41.position = CGPoint(x: col4, y: row3 + plotHeight)
        plot42.position = CGPoint(x: col4, y: row4 + plotHeight*2)
        plot43.position = CGPoint(x: col4, y: row5 + plotHeight*3)
        plot44.position = CGPoint(x: col4, y: row6 + plotHeight*4)
        plot45.position = CGPoint(x: col4, y: row7 + plotHeight*5)
        plot46.position = CGPoint(x: col4, y: row8 + plotHeight*6)
        plot47.position = CGPoint(x: col4, y: row9 + plotHeight*7)
        plot48.position = CGPoint(x: col4, y: row10 + plotHeight*8)
        plot49.position = CGPoint(x: col4, y: row11 + plotHeight*9)
        
        for index in 0...47
        {
            crops[index].position = plots[index].position
            boxes[index].position = plots[index].position
            crops[index].zPosition = CGFloat(2 + cropAlphaValue[index])
            plots[index].zPosition = 1
            boxes[index].size = CGSize(width: plotHeight, height: plotHeight)
            plots[index].size = CGSize(width: plotWidth, height: plotHeight)
            crops[index].size = CGSize(width: plotWidth*0.85, height: plotHeight*0.85)
            plots[index].texture = SKTexture(imageNamed: "Field")
            boxes[index].alpha = 0
            if plotInfo.integer(forKey: plotNames[index]) == 0
            {
                crops[index].alpha = 0
            }
            getCropTexture(num: index)
        }
        
        backButton.text = "back"
        backButton.fontSize = 80
        backButton.fontColor = SKColor.white
        backButton.position = CGPoint(x: self.size.width*0.2, y: self.size.height*0.94)
        backButton.zPosition = 16
        backButton.name = "backButton"
        
        expBarBG.texture = SKTexture(imageNamed: "black")
        expBarBG.anchorPoint = CGPoint(x: 0, y: 0.5)
        expBarBG.position = CGPoint(x: self.size.width*0.6, y: self.size.height*0.92)
        expBarBG.zPosition = 16
        expBarBG.size = CGSize(width: self.size.width*0.2, height: self.size.height*0.02)
        
        expBar.texture = SKTexture(imageNamed: "green")
        expBar.anchorPoint = CGPoint(x: 0, y: 0.5)
        expBar.position = CGPoint(x: self.size.width*0.6 + self.size.width*0.002, y: self.size.height*0.9202)
        expBar.zPosition = 17
        calcExpBarWidth()
        
        levelLabel.fontSize = 100
        levelLabel.fontColor = SKColor.white
        levelLabel.position = CGPoint(x: self.size.width*0.65, y: self.size.height*0.94)
        levelLabel.zPosition = 16
        levelLabel.name = "levelLabel"
        levelLabel.text = String("lvl:")
        
        levelNum.fontSize = 100
        levelNum.fontColor = SKColor.white
        levelNum.position = CGPoint(x: self.size.width*0.75, y: self.size.height*0.94)
        levelNum.zPosition = 16
        levelNum.name = "levelNum"
        levelNum.text = String("\(playerData.integer(forKey: "level"))")
        
        moneyLabel.fontSize = 100
        moneyLabel.fontColor = SKColor.white
        moneyLabel.position = CGPoint(x: self.size.width*0.4, y: self.size.height*0.94)
        moneyLabel.zPosition = 16
        moneyLabel.name = "moneyLabel"
        moneyLabel.text = String("$\(playerData.integer(forKey: "money"))")
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(GameScene.grow), userInfo: nil, repeats: true)
        
    
        if device.contains("X")
        {
            moneyLabel.position = CGPoint(x: self.size.width*0.46, y: self.size.height*0.92)
            backButton.position = CGPoint(x: self.size.width*0.27, y: self.size.height*0.92)
            levelNum.fontSize = 80
            levelLabel.fontSize = 80
            levelNum.position = CGPoint(x: self.size.width*0.75, y: self.size.height*0.935)
            levelLabel.position = CGPoint(x: self.size.width*0.65, y: self.size.height*0.935)
        }
        
        
        self.addChild(backButton)
        self.addChild(levelLabel)
        self.addChild(levelNum)
        self.addChild(moneyLabel)
        
        for index in 0...47
        {
            boxes[index].removeFromParent()
            crops[index].removeFromParent()
            plots[index].removeFromParent()
            self.addChild(boxes[index])
            self.addChild(crops[index])
            self.addChild(plots[index])
        }
        
    }
    
    @objc func grow(timer:Timer)
    {
        currentTime = Int(CFAbsoluteTimeGetCurrent())
        for index in 0...47
        {
            if plotInfo.integer(forKey: plotNames[index]) > 0
            {
                timeElapsed = currentTime - plotTime.integer(forKey: "\(plotNames[index])time")
                switch(plotInfo.integer(forKey: plotNames[index]))
                {
                case 1:
                    if timeElapsed >= (strawTime / 2)
                    {
                        plotInfo.set(2, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 2:
                    if timeElapsed >= strawTime
                    {
                        plotInfo.set(-1, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 3,4:
                    if timeElapsed >= (tomatoTime / 2)
                    {
                        plotInfo.set(4, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                    if timeElapsed >= tomatoTime
                    {
                        plotInfo.set(-2, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 5,6:
                    if timeElapsed >= (onionTime / 2)
                    {
                        plotInfo.set(6, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                    if timeElapsed >= onionTime
                    {
                        plotInfo.set(-3, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 7,8:
                    if timeElapsed >= (cucumberTime / 2)
                    {
                        plotInfo.set(8, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                    if timeElapsed >= cucumberTime
                    {
                        plotInfo.set(-4, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 9,10:
                    if timeElapsed >= (brocolliTime / 2)
                    {
                        plotInfo.set(10, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                    if timeElapsed >= brocolliTime
                    {
                        plotInfo.set(-5, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 11,12:
                    if timeElapsed >= (watermelonTime / 2)
                    {
                        plotInfo.set(12, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                    if timeElapsed >= watermelonTime
                    {
                        plotInfo.set(-6, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 13,14:
                    if timeElapsed >= (hotPepperTime / 2)
                    {
                        plotInfo.set(14, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                    if timeElapsed >= hotPepperTime
                    {
                        plotInfo.set(-7, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 15,16:
                    if timeElapsed >= (beansTime / 2)
                    {
                        plotInfo.set(16, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                    if timeElapsed >= beansTime
                    {
                        plotInfo.set(-8, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 17,18:
                    if timeElapsed >= (cornTime / 2)
                    {
                        plotInfo.set(18, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                    if timeElapsed >= cornTime
                    {
                        plotInfo.set(-9, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 19,20:
                    if timeElapsed >= (pepperTime / 2)
                    {
                        plotInfo.set(20, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                    if timeElapsed >= pepperTime
                    {
                        plotInfo.set(-10, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 21,22:
                    if timeElapsed >= (carrotTime / 2)
                    {
                        plotInfo.set(22, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                    if timeElapsed >= carrotTime
                    {
                        plotInfo.set(-11, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                case 23,24:
                    if timeElapsed >= (cabbageTime / 2)
                    {
                        plotInfo.set(24, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                    if timeElapsed >= cabbageTime
                    {
                        plotInfo.set(-12, forKey: plotNames[index])
                        getCropTexture(num: index)
                    }
                default:
                    plotInfo.set(0, forKey: plotNames[index])
                }
                
            }
        }
    }
    
    func calcExpBarWidth()
    {
        getExpRequired()
        expPercent = CGFloat(playerData.integer(forKey: "experience")) / expRequired
        expBarWidth = self.size.width*0.197 * expPercent
        expBar.size = CGSize(width: expBarWidth, height: self.size.height*0.018)
        expBar.removeFromParent()
        expBarBG.removeFromParent()
        self.addChild(expBarBG)
        self.addChild(expBar)
        
    }
    
    func getCropTexture(num: Int)
    {
        switch(plotInfo.integer(forKey: plotNames[num]))
        {
        case 1,3,5,7,9,11,13,15,17,19,21,23:
            crops[num].texture = SKTexture(imageNamed: "Field_Seeds")
            crops[num].size = CGSize(width: (self.size.width/6)*0.81, height: (self.size.height/17)*0.79)
            crops[num].position.y = plots[num].position.y - (self.size.height/240)
        case 2:
            crops[num].texture = SKTexture(imageNamed: "Strawberry_Field")
            crops[num].size = CGSize(width: (self.size.width/6)*1.1, height: (self.size.height/17)*1.2)
            crops[num].position.y = plots[num].position.y + self.size.height/80
        case 4:
            crops[num].texture = SKTexture(imageNamed: "Tomatoe_Field")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.2)
            crops[num].position.y = plots[num].position.y + self.size.height/80
        case 6:
            crops[num].texture = SKTexture(imageNamed: "Onion_Field")
            crops[num].size = CGSize(width: (self.size.width/6)*0.9, height: (self.size.height/17)*1.2)
            crops[num].position.y = plots[num].position.y + self.size.height/80
        case 8:
            crops[num].texture = SKTexture(imageNamed: "Cucumber_Field")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.1)
            crops[num].position.y = plots[num].position.y + self.size.height/130
        case 10:
            crops[num].texture = SKTexture(imageNamed: "Broccoli_Field")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.1)
            crops[num].position.y = plots[num].position.y + self.size.height/130
        case 12:
            crops[num].texture = SKTexture(imageNamed: "Watermelon_Field")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17))
        case 14:
            crops[num].texture = SKTexture(imageNamed: "HotPepper_Field")
            crops[num].size = CGSize(width: (self.size.width/6)*0.8, height: (self.size.height/17)*1.2)
            crops[num].position.y = plots[num].position.y + self.size.height/70
        case 16:
            crops[num].texture = SKTexture(imageNamed: "Beans_Field")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.2)
            crops[num].position.y = plots[num].position.y + self.size.height/60
        case 18:
            crops[num].texture = SKTexture(imageNamed: "Corn_Field")
            crops[num].size = CGSize(width: (self.size.width/6)*0.8, height: (self.size.height/17)*1.2)
            crops[num].position.y = plots[num].position.y + self.size.height/80
        case 20:
            crops[num].texture = SKTexture(imageNamed: "Pepper_Field")
            crops[num].size = CGSize(width: (self.size.width/6)*0.9, height: (self.size.height/17)*1.2)
            crops[num].position.y = plots[num].position.y + self.size.height/90
        case 22:
            crops[num].texture = SKTexture(imageNamed: "Carrot_Field")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17))
            crops[num].position.y = plots[num].position.y + self.size.height/400
        case 24:
            crops[num].texture = SKTexture(imageNamed: "Cabbage_Field")
            crops[num].size = CGSize(width: (self.size.width/6)*0.9, height: (self.size.height/17)*0.9)
        case -1:
            crops[num].texture = SKTexture(imageNamed: "Strawberry_Field_Grown")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.2)
            crops[num].position.y = plots[num].position.y + self.size.height / 70
        case -2:
            crops[num].texture = SKTexture(imageNamed: "Tomatoe_Field_Grown")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.6)
            crops[num].position.y = plots[num].position.y + self.size.height / 40
        case -3:
            crops[num].texture = SKTexture(imageNamed: "Onion_Field_Grown")
            crops[num].size = CGSize(width: (self.size.width/6)*0.85, height: (self.size.height/17)*1.2)
            crops[num].position.y = plots[num].position.y + self.size.height / 78
        case -4:
            crops[num].texture = SKTexture(imageNamed: "Cucumber_Field_Grown")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.4)
            crops[num].position.y = plots[num].position.y + self.size.height / 78
        case -5:
            crops[num].texture = SKTexture(imageNamed: "Broccoli_Field_Grown")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.2)
            crops[num].position.y = plots[num].position.y + self.size.height / 78

        case -6:
            crops[num].texture = SKTexture(imageNamed: "Watermelon_Grown")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.4)
            crops[num].position.y = plots[num].position.y + self.size.height / 150
        case -7:
            crops[num].texture = SKTexture(imageNamed: "HotPepper_Field_Grown")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.4)
            crops[num].position.y = plots[num].position.y + self.size.height / 51
        case -8:
            crops[num].texture = SKTexture(imageNamed: "Beans_Field_Grown")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.4)
            crops[num].position.y = plots[num].position.y + self.size.height / 51
        case -9:
            crops[num].texture = SKTexture(imageNamed: "Corn_Field_Grown")
            crops[num].size = CGSize(width: (self.size.width/6)*0.9, height: (self.size.height/17)*1.6)
            crops[num].position.y = plots[num].position.y + self.size.height/38
            crops[num].position.x = plots[num].position.x + (self.size.width / -350)
        case -10:
            crops[num].texture = SKTexture(imageNamed: "Pepper_Field_Grown")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.3)
            crops[num].position.y = plots[num].position.y + self.size.height/60
            crops[num].position.x = plots[num].position.x + self.size.width/160
        case -11:
            crops[num].texture = SKTexture(imageNamed: "Carrot_Field_Grown")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17)*1.1)
            crops[num].position.y = plots[num].position.y + self.size.height/100
            crops[num].position.x = plots[num].position.x + self.size.width/160
        case -12:
            crops[num].texture = SKTexture(imageNamed: "Cabbage_Field_Grown")
            crops[num].size = CGSize(width: (self.size.width/6), height: (self.size.height/17))
        default:
            crops[num].texture = SKTexture(imageNamed: "Field_Seeds")
            crops[num].size = CGSize(width: (self.size.width/6)*0.81, height: (self.size.height/17)*0.79)
            crops[num].position.y = plots[num].position.y - (self.size.height/240)
            
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch: AnyObject in touches
        {
            let positionOfTouch = touch.location(in: self)
            
            if backButton.contains(positionOfTouch)
            {
                self.run(clickSound)
                let sceneToMoveTo = MainMenu(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let sceneTransition = SKTransition.fade(withDuration: 0.3)
                self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
            }
            if moneyLabel.contains(positionOfTouch)
            {
                self.run(clickSound)
                let sceneToMoveTo = AchievementScene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let sceneTransition = SKTransition.fade(withDuration: 0.3)
                self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
            }
            
            for index in 0...47
            {
                if boxes[index].contains(positionOfTouch)
                {
                    plotTapped = "\(plotNames[index])"
                    plotTappedTime = "\(plotNames[index])time"
                    cropTapped = crops[index]
                    if plotInfo.integer(forKey: plotTapped) == 0
                    {
                        let sceneToMoveTo = EmptyMenuScene(size: self.size)
                        sceneToMoveTo.scaleMode = self.scaleMode
                        let sceneTransition = SKTransition.fade(withDuration: 0.01)
                        self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
                    }
                    if plotInfo.integer(forKey: plotTapped) > 0
                    {
                        let sceneToMoveTo = GrowingScene(size: self.size)
                        sceneToMoveTo.scaleMode = self.scaleMode
                        let sceneTransition = SKTransition.fade(withDuration: 0.01)
                        self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
                    }
                    if plotInfo.integer(forKey: plotTapped) < 0
                    {
                        switch(plotInfo.integer(forKey: plotTapped))
                        {
                            case -1:
                                money = money + strawSellPrice
                                experience = experience + strawExp
                                totalMoney = totalMoney + strawSellPrice
                            case -2:
                                money = money + tomatoSellPrice
                                experience = experience + tomatoExp
                                totalMoney = totalMoney + tomatoSellPrice
                            case -3:
                                money = money + onionSellPrice
                                experience = experience + onionExp
                                totalMoney = totalMoney + onionSellPrice
                            case -4:
                                money = money + cucumberSellPrice
                                experience = experience + cucumberExp
                                totalMoney = totalMoney + cucumberSellPrice
                            case -5:
                                money = money + brocolliSellPrice
                                experience = experience + brocolliExp
                                totalMoney = totalMoney + brocolliSellPrice
                            case -6:
                                money = money + watermelonSellPrice
                                experience = experience + watermelonExp
                                totalMoney = totalMoney + watermelonSellPrice
                            case -7:
                                money = money + hotPepperSellPrice
                                experience = experience + hotPepperExp
                                totalMoney = totalMoney + hotPepperSellPrice
                            case -8:
                                money = money + beansSellPrice
                                experience = experience + beansExp
                                totalMoney = totalMoney + beansSellPrice
                            case -9:
                                money = money + cornSellPrice
                                experience = experience + cornExp
                                totalMoney = totalMoney + cornSellPrice
                            case -10:
                                money = money + pepperSellPrice
                                experience = experience + pepperExp
                                totalMoney = totalMoney + pepperSellPrice
                            case -11:
                                money = money + carrotSellPrice
                                experience = experience + carrotExp
                                totalMoney = totalMoney + carrotSellPrice
                            default:
                                money = money + cabbageSellPrice
                                experience = experience + cabbageExp
                                totalMoney = totalMoney + cabbageSellPrice
                        }
                        self.run(sellSound)
                        cropGrown = cropGrown + 1
                        plotInfo.set(0, forKey: plotTapped)
                        playerData.set(money, forKey: "money")
                        playerData.set(experience, forKey: "experience")
                        playerData.set(cropGrown, forKey: "cropGrown")
                        playerData.set(totalMoney, forKey: "totalMoney")
                        checkLevel()
                        moneyLabel.text = String("$\(playerData.integer(forKey: "money"))")
                        calcExpBarWidth()
                        levelNum.text = String("\(level)")
                        crops[index].texture = SKTexture(imageNamed: "Field_Seeds")
                        crops[index].alpha = 0
                    }
                }
            }
        }
    }
}
