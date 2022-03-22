//
//  EmptyMenuScene.swift
//  Farm4
//
//  Created by Austin Collier on 2/27/19.
//  Copyright © 2019 Austin Collier. All rights reserved.
//

import Foundation
import SpriteKit

class EmptyMenuScene: SKScene
{
    
    //Labels for Buttons
    let menuCancel = SKLabelNode(fontNamed: font)
    let backButton = SKLabelNode(fontNamed: font)
    
    //Labels for Images
    let choiceStrawberry = SKSpriteNode(imageNamed: "Strawberry")
    let choiceTomatoe = SKSpriteNode(imageNamed: "Tomato")
    let choiceOnion = SKSpriteNode(imageNamed: "Onion")
    let choiceCucumber = SKSpriteNode(imageNamed: "Cucumber")
    let choiceBrocolli = SKSpriteNode(imageNamed: "Broccoli")
    let choiceWatermelon = SKSpriteNode(imageNamed: "Watermelon")
    let choiceHotPepper = SKSpriteNode(imageNamed: "HotPepper")
    let choiceBeans = SKSpriteNode(imageNamed: "Beans")
    let choiceCorn = SKSpriteNode(imageNamed: "Corn")
    let choicePepper = SKSpriteNode(imageNamed: "Pepper")
    let choiceCarrot = SKSpriteNode(imageNamed: "Carrot")
    let choiceCabbage = SKSpriteNode(imageNamed: "Cabbage")
    
    //Labels for Headings
    let costLabel = SKLabelNode(fontNamed: font)
    let returnLabel = SKLabelNode(fontNamed: font)
    let timeLabel = SKLabelNode(fontNamed: font)
    let levelLabel = SKLabelNode(fontNamed: font)
    let cropsLabel = SKLabelNode(fontNamed: font)
    
    let clickSound = SKAction.playSoundFileNamed("Click.wav", waitForCompletion: false)
    let plantSound = SKAction.playSoundFileNamed("Seeds.wav", waitForCompletion: false)
    
    override func didMove(to view: SKView)
    {
        var width = self.size.width*0.25
        let spacing = self.size.height*0.0575
        var firstIcon = self.size.height*0.73
        var iconHeight = self.size.height*0.74
        var headingWidth = self.size.width*0.165
        var costRoll = width+headingWidth*1
        var returnRoll = width+headingWidth*2
        var timeRoll = width+headingWidth*3
        var labelHeight = self.size.height*0.8
        
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
        
        
        //Declaring Button
        menuCancel.text = "Cancel"
        menuCancel.fontSize = 100
        menuCancel.fontColor  = SKColor.white
        menuCancel.position = CGPoint(x: self.size.width/2, y: self.size.height*0.04)
        menuCancel.zPosition = 8
        menuCancel.name = "cancel"
        
        
        //Background setup
        emptyMenuBG.texture = SKTexture(imageNamed: "empty")
        emptyMenuBG.position = CGPoint(x: self.size.width/2, y: self.size.height*0.45)
        emptyMenuBG.zPosition = 7
        emptyMenuBG.name = "emptyMenuBG"
        emptyMenuBG.size = CGSize(width: self.size.width*0.65, height: self.size.height*0.85)
        
        menuShadow.texture = SKTexture(imageNamed: "black")
        menuShadow.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        menuShadow.zPosition = 6
        menuShadow.size = self.size
        menuShadow.alpha = 0.65
        self.addChild(menuShadow)
        
        moneyLabel.fontSize = 120
        moneyLabel.fontColor = SKColor.white
        moneyLabel.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.94)
        moneyLabel.zPosition = 21
        moneyLabel.name = "moneyLabel"
        moneyLabel.text = String("$\(playerData.integer(forKey: "money"))")
        self.addChild(moneyLabel)
        
        
        if device.contains("X")
        {
            emptyMenuBG.size = CGSize(width: self.size.width*0.57, height: self.size.height*0.82)
            headingWidth = self.size.width*0.15
            width = self.size.width*0.27
            timeRoll = width+headingWidth*3
            firstIcon = self.size.height*0.78
            labelHeight = self.size.height*0.84
            iconHeight = self.size.height*0.787
            costRoll = width+headingWidth*1
            returnRoll = width+headingWidth*2
            menuCancel.position = CGPoint(x: self.size.width/2, y: self.size.height*0.07)
            moneyLabel.position = CGPoint(x: self.size.width*0.5, y: self.size.height*0.92)
            emptyMenuBG.position = CGPoint(x: self.size.width/2, y: self.size.height*0.465)
        }
        
        
        self.addChild(emptyMenuBG)
        self.addChild(menuCancel)
        //Heading***********************************************************************************************************
        
        cropsLabel.text = "|Type|"
        cropsLabel.position = CGPoint(x: width, y: labelHeight)
        cropsLabel.zPosition = 8
        cropsLabel.fontSize = 70
        self.addChild(cropsLabel)
        
        costLabel.text = "|Cost|"
        costLabel.position = CGPoint(x: width+headingWidth*1, y: labelHeight)
        costLabel.zPosition = 8
        costLabel.fontSize = 70
        self.addChild(costLabel)
        
        returnLabel.text = "|Sell|"
        returnLabel.position = CGPoint(x: width+headingWidth*2, y: labelHeight)
        returnLabel.zPosition = 8
        returnLabel.fontSize = 70
        self.addChild(returnLabel)
        
        timeLabel.text = "|Time|"
        timeLabel.position = CGPoint(x: width+headingWidth*3, y: labelHeight)
        timeLabel.zPosition = 8
        timeLabel.fontSize = 70
        self.addChild(timeLabel)
        
        
        
        //Crops
        
        //StrawBerry----------------------------------------------------------
        choiceStrawberry.size = CGSize(width: 100, height: 100)
        choiceStrawberry.position = CGPoint(x: width, y: iconHeight)
        choiceStrawberry.zPosition = 8
        
        strawberryCostLabel.fontSize = 70
        strawberryCostLabel.position = CGPoint(x: costRoll, y: firstIcon)
        strawberryCostLabel.zPosition = 8
        strawberryCostLabel.text = String(strawPrice)
        self.addChild(strawberryCostLabel)
        
        strawberryPriceLabel.fontSize = 70
        strawberryPriceLabel.position = CGPoint(x: returnRoll, y: firstIcon)
        strawberryPriceLabel.zPosition = 8
        strawberryPriceLabel.text = String(strawSellPrice)
        self.addChild(strawberryPriceLabel)
        
        strawberryTimeLabel.fontSize = 70
        strawberryTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon)
        strawberryTimeLabel.zPosition = 8
        strawberryTimeLabel.text = String(strawTime) + "s"
        self.addChild(strawberryTimeLabel)
        
        
        //Tomatoe----------------------------------------------------------------------
        choiceTomatoe.size = CGSize(width: 100, height: 100)
        choiceTomatoe.position = CGPoint(x: width, y: iconHeight - spacing*1)
        choiceTomatoe.zPosition = 8
        
        tomatoCostLabel.fontSize = 70
        tomatoCostLabel.position = CGPoint(x: costRoll, y: firstIcon - spacing*1)
        tomatoCostLabel.zPosition = 8
        tomatoCostLabel.text = String(tomatoPrice)
        self.addChild(tomatoCostLabel)
        
        tomatoPriceLabel.fontSize = 70
        tomatoPriceLabel.position = CGPoint(x: returnRoll, y: firstIcon - spacing*1)
        tomatoPriceLabel.zPosition = 8
        tomatoPriceLabel.text = String(tomatoSellPrice)
        self.addChild(tomatoPriceLabel)
        
        tomatoTimeLabel.fontSize = 70
        tomatoTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon - spacing*1)
        tomatoTimeLabel.zPosition = 8
        tomatoTimeLabel.text = String(tomatoTime) + "s"
        self.addChild(tomatoTimeLabel)
        
        
        //Onion--------------------------------------------------------------------------
        choiceOnion.size = CGSize(width: 100, height: 100)
        choiceOnion.position = CGPoint(x: width, y: iconHeight - spacing*2)
        choiceOnion.zPosition = 8
        
        onionCostLabel.fontSize = 70
        onionCostLabel.position = CGPoint(x: costRoll, y: firstIcon - spacing*2)
        onionCostLabel.zPosition = 8
        onionCostLabel.text = String(onionPrice)
        self.addChild(onionCostLabel)
        
        onionPriceLabel.fontSize = 70
        onionPriceLabel.position = CGPoint(x: returnRoll, y: firstIcon - spacing*2)
        onionPriceLabel.zPosition = 8
        onionPriceLabel.text = String(onionSellPrice)
        self.addChild(onionPriceLabel)
        
        onionTimeLabel.fontSize = 70
        onionTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon - spacing*2)
        onionTimeLabel.zPosition = 8
        onionTimeLabel.text = String(onionTime / 60) + "m"
        self.addChild(onionTimeLabel)
        
        
        //Cucumber-----------------------------------------------------------------------------------
        choiceCucumber.size = CGSize(width: 100, height: 100)
        choiceCucumber.position = CGPoint(x: width, y: iconHeight - spacing*3)
        choiceCucumber.zPosition = 8
        
        cucumberCostLabel.fontSize = 70
        cucumberCostLabel.position = CGPoint(x: costRoll, y: firstIcon - spacing*3)
        cucumberCostLabel.zPosition = 8
        cucumberCostLabel.text = String(cucumberPrice)
        self.addChild(cucumberCostLabel)
        
        cucumberPriceLabel.fontSize = 70
        cucumberPriceLabel.position = CGPoint(x: returnRoll, y: firstIcon - spacing*3)
        cucumberPriceLabel.zPosition = 8
        cucumberPriceLabel.text = String(cucumberSellPrice)
        self.addChild(cucumberPriceLabel)
        
        cucumberTimeLabel.fontSize = 70
        cucumberTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon - spacing*3)
        cucumberTimeLabel.zPosition = 8
        cucumberTimeLabel.text = String(cucumberTime / 60) + "m"
        self.addChild(cucumberTimeLabel)
        
        
        //Brocolli------------------------------------------------------------------------------
        choiceBrocolli.size = CGSize(width: 100, height: 100)
        choiceBrocolli.position = CGPoint(x: width, y: iconHeight - spacing*4)
        choiceBrocolli.zPosition = 8
        
        brocolliCostLabel.fontSize = 70
        brocolliCostLabel.position = CGPoint(x: costRoll, y: firstIcon - spacing*4)
        brocolliCostLabel.zPosition = 8
        brocolliCostLabel.text = String(brocolliPrice)
        self.addChild(brocolliCostLabel)
        
        brocolliPriceLabel.fontSize = 70
        brocolliPriceLabel.position = CGPoint(x: returnRoll, y: firstIcon - spacing*4)
        brocolliPriceLabel.zPosition = 8
        brocolliPriceLabel.text = String(brocolliSellPrice)
        self.addChild(brocolliPriceLabel)
        
        brocolliTimeLabel.fontSize = 70
        brocolliTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon - spacing*4)
        brocolliTimeLabel.zPosition = 8
        brocolliTimeLabel.text = String(brocolliTime / 60) + "m"
        self.addChild(brocolliTimeLabel)
        
        
        //Watermelon------------------------------------------------------------------------------
        choiceWatermelon.size = CGSize(width: 100, height: 100)
        choiceWatermelon.position = CGPoint(x: width, y: iconHeight - spacing*5)
        choiceWatermelon.zPosition = 8
        
        watermelonCostLabel.fontSize = 70
        watermelonCostLabel.position = CGPoint(x: costRoll, y: firstIcon - spacing*5)
        watermelonCostLabel.zPosition = 8
        watermelonCostLabel.text = String(watermelonPrice)
        self.addChild(watermelonCostLabel)
        
        watermelonPriceLabel.fontSize = 70
        watermelonPriceLabel.position = CGPoint(x: returnRoll, y: firstIcon - spacing*5)
        watermelonPriceLabel.zPosition = 8
        watermelonPriceLabel.text = String(watermelonSellPrice)
        self.addChild(watermelonPriceLabel)
        
        watermelonTimeLabel.fontSize = 70
        watermelonTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon - spacing*5)
        watermelonTimeLabel.zPosition = 8
        watermelonTimeLabel.text = String(watermelonTime / 60) + "m"
        self.addChild(watermelonTimeLabel)
        
        
        //HotPepper------------------------------------------------------------------------------
        choiceHotPepper.size = CGSize(width: 100, height: 100)
        choiceHotPepper.position = CGPoint(x: width, y: iconHeight - spacing*6)
        choiceHotPepper.zPosition = 8
        
        hotPepperCostLabel.fontSize = 70
        hotPepperCostLabel.position = CGPoint(x: costRoll, y: firstIcon - spacing*6)
        hotPepperCostLabel.zPosition = 8
        hotPepperCostLabel.text = String(hotPepperPrice)
        self.addChild(hotPepperCostLabel)
        
        hotPepperPriceLabel.fontSize = 70
        hotPepperPriceLabel.position = CGPoint(x: returnRoll, y: firstIcon - spacing*6)
        hotPepperPriceLabel.zPosition = 8
        hotPepperPriceLabel.text = String(hotPepperSellPrice)
        self.addChild(hotPepperPriceLabel)
        
        hotPepperTimeLabel.fontSize = 70
        hotPepperTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon - spacing*6)
        hotPepperTimeLabel.zPosition = 8
        hotPepperTimeLabel.text = String(hotPepperTime / 60) + "m"
        self.addChild(hotPepperTimeLabel)
        
        
        //Cabbage------------------------------------------------------------------------------
        choiceCabbage.size = CGSize(width: 100, height: 100)
        choiceCabbage.position = CGPoint(x: width, y: iconHeight - spacing*7)
        choiceCabbage.zPosition = 8
        
        cabbageCostLabel.fontSize = 70
        cabbageCostLabel.position = CGPoint(x: costRoll, y: firstIcon - spacing*7)
        cabbageCostLabel.zPosition = 8
        cabbageCostLabel.text = String(cabbagePrice)
        self.addChild(cabbageCostLabel)
        
        cabbagePriceLabel.fontSize = 70
        cabbagePriceLabel.position = CGPoint(x: returnRoll, y: firstIcon - spacing*7)
        cabbagePriceLabel.zPosition = 8
        cabbagePriceLabel.text = String(cabbageSellPrice)
        self.addChild(cabbagePriceLabel)
        
        cabbageTimeLabel.fontSize = 70
        cabbageTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon - spacing*7)
        cabbageTimeLabel.zPosition = 8
        cabbageTimeLabel.text = String(cabbageTime / 60) + "m"
        self.addChild(cabbageTimeLabel)
        
        
        //Beans------------------------------------------------------------------------------
        choiceBeans.size = CGSize(width: 100, height: 100)
        choiceBeans.position = CGPoint(x: width, y: iconHeight - spacing*8)
        choiceBeans.zPosition = 8
        
        beansCostLabel.fontSize = 70
        beansCostLabel.position = CGPoint(x: costRoll, y: firstIcon - spacing*8)
        beansCostLabel.zPosition = 8
        beansCostLabel.text = String(beansPrice)
        self.addChild(beansCostLabel)
        
        beansPriceLabel.fontSize = 70
        beansPriceLabel.position = CGPoint(x: returnRoll, y: firstIcon - spacing*8)
        beansPriceLabel.zPosition = 8
        beansPriceLabel.text = String(beansSellPrice)
        self.addChild(beansPriceLabel)
        
        beansTimeLabel.fontSize = 70
        beansTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon - spacing*8)
        beansTimeLabel.zPosition = 8
        beansTimeLabel.text = String(beansTime / 3600) + "hr"
        self.addChild(beansTimeLabel)
        
        
        //Corn------------------------------------------------------------------------------
        choiceCorn.size = CGSize(width: 100, height: 100)
        choiceCorn.position = CGPoint(x: width, y: iconHeight - spacing*9)
        choiceCorn.zPosition = 8
        
        cornCostLabel.fontSize = 70
        cornCostLabel.position = CGPoint(x: costRoll, y: firstIcon - spacing*9)
        cornCostLabel.zPosition = 8
        cornCostLabel.text = String(cornPrice)
        self.addChild(cornCostLabel)
        
        cornPriceLabel.fontSize = 70
        cornPriceLabel.position = CGPoint(x: returnRoll, y: firstIcon - spacing*9)
        cornPriceLabel.zPosition = 8
        cornPriceLabel.text = String(cornSellPrice)
        self.addChild(cornPriceLabel)
        
        cornTimeLabel.fontSize = 70
        cornTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon - spacing*9)
        cornTimeLabel.zPosition = 8
        cornTimeLabel.text = "1.5hr"
        self.addChild(cornTimeLabel)
        
        
        //Pepper------------------------------------------------------------------------------
        choicePepper.size = CGSize(width: 100, height: 100)
        choicePepper.position = CGPoint(x: width, y: iconHeight - spacing*10)
        choicePepper.zPosition = 8
        
        pepperCostLabel.fontSize = 70
        pepperCostLabel.position = CGPoint(x: costRoll, y: firstIcon - spacing*10)
        pepperCostLabel.zPosition = 8
        pepperCostLabel.text = String(pepperPrice)
        self.addChild(pepperCostLabel)
        
        pepperPriceLabel.fontSize = 70
        pepperPriceLabel.position = CGPoint(x: returnRoll, y: firstIcon - spacing*10)
        pepperPriceLabel.zPosition = 8
        pepperPriceLabel.text = String(pepperSellPrice)
        self.addChild(pepperPriceLabel)
        
        pepperTimeLabel.fontSize = 70
        pepperTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon - spacing*10)
        pepperTimeLabel.zPosition = 8
        pepperTimeLabel.text = String(pepperTime / 3600) + "hr"
        self.addChild(pepperTimeLabel)
        
        
        //Carrot------------------------------------------------------------------------------
        choiceCarrot.size = CGSize(width: 100, height: 100)
        choiceCarrot.position = CGPoint(x: width, y: iconHeight - spacing*11)
        choiceCarrot.zPosition = 8
        
        carrotCostLabel.fontSize = 70
        carrotCostLabel.position = CGPoint(x: costRoll, y: firstIcon - spacing*11)
        carrotCostLabel.zPosition = 8
        carrotCostLabel.text = String(carrotPrice)
        self.addChild(carrotCostLabel)
        
        carrotPriceLabel.fontSize = 70
        carrotPriceLabel.position = CGPoint(x: returnRoll, y: firstIcon - spacing*11)
        carrotPriceLabel.zPosition = 8
        carrotPriceLabel.text = String(carrotSellPrice)
        self.addChild(carrotPriceLabel)
        
        carrotTimeLabel.fontSize = 70
        carrotTimeLabel.position = CGPoint(x: timeRoll, y: firstIcon - spacing*11)
        carrotTimeLabel.zPosition = 8
        carrotTimeLabel.text = String(carrotTime / 3600) + "hr"
        self.addChild(carrotTimeLabel)
        
        
        //Choice labels
        self.addChild(choiceStrawberry)
        self.addChild(choiceTomatoe)
        self.addChild(choiceOnion)
        self.addChild(choiceCucumber)
        self.addChild(choiceBrocolli)
        self.addChild(choiceWatermelon)
        self.addChild(choiceHotPepper)
        self.addChild(choiceBeans)
        self.addChild(choiceCorn)
        self.addChild(choicePepper)
        self.addChild(choiceCarrot)
        self.addChild(choiceCabbage)
        
        //Function to determine what text colour would be displayed based on the user's level. ------------------------------------------------------------------------------
        for index in 0...47
        {
            labelArray[index].fontColor = SKColor.white
        }
        getLabelColors()
    }
    
    //Function that runs when the user chooses a crop from the scene.------------------------------------------------------------------------------
    func choiceWasMade()
    {
        playerData.set(money, forKey: "money")
        plotTime.set(CFAbsoluteTimeGetCurrent(), forKey: "\(plotTappedTime)")
        cropTapped.alpha = 1
        self.run(plantSound)
        let sceneToMoveTo = GameScene(size: self.size)
        sceneToMoveTo.scaleMode = self.scaleMode
        let sceneTransition = SKTransition.fade(withDuration: 0.02)
        self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch: AnyObject in touches
        {
            let positionOfTouch = touch.location(in: self)
            
            
            if menuCancel.contains(positionOfTouch) //Cancel Button
            {
                self.run(clickSound)
                let sceneToMoveTo = GameScene(size: self.size)
                sceneToMoveTo.scaleMode = self.scaleMode
                let sceneTransition = SKTransition.fade(withDuration: 0.02)
                self.view!.presentScene(sceneToMoveTo, transition: sceneTransition)
            }
            
            //The following lines are used to determine which crop is chosen and thus the apprioprieate amount of money would be deducted from the user. The plotinfo would also be set depending on the type of crop.
            if choiceStrawberry.contains(positionOfTouch) && playerData.integer(forKey: "money") >= strawPrice
                && playerData.integer(forKey: "level") >= strawLevel
            {
                money = money - strawPrice
                plotInfo.set(1, forKey: "\(plotTapped)")
                choiceWasMade()
            }
            
            if choiceTomatoe.contains(positionOfTouch) && playerData.integer(forKey: "money") >= tomatoPrice
                && playerData.integer(forKey: "level") >= tomatoLevel
            {
                money = money - tomatoPrice
                plotInfo.set(3, forKey: "\(plotTapped)")
                choiceWasMade()
            }
            
            if choiceOnion.contains(positionOfTouch) && playerData.integer(forKey: "money") >= onionPrice
                && playerData.integer(forKey: "level") >= onionLevel
            {
                money = money - onionPrice
                plotInfo.set(5, forKey: "\(plotTapped)")
                choiceWasMade()
            }
            
            if choiceCucumber.contains(positionOfTouch) && playerData.integer(forKey: "money") >= cucumberPrice
                && playerData.integer(forKey: "level") >= cucumberLevel
            {
                money = money - cucumberPrice
                plotInfo.set(7, forKey: "\(plotTapped)")
                choiceWasMade()
            }
            
            if choiceBrocolli.contains(positionOfTouch) && playerData.integer(forKey: "money") >= brocolliPrice
                && playerData.integer(forKey: "level") >= brocolliLevel
            {
                money = money - brocolliPrice
                plotInfo.set(9, forKey: "\(plotTapped)")
                choiceWasMade()
            }
            
            if choiceWatermelon.contains(positionOfTouch) && playerData.integer(forKey: "money") >= watermelonPrice
                && playerData.integer(forKey: "level") >= watermelonLevel
            {
                money = money - watermelonPrice
                plotInfo.set(11, forKey: "\(plotTapped)")
                choiceWasMade()
            }
            
            if choiceHotPepper.contains(positionOfTouch) && playerData.integer(forKey: "money") >= hotPepperPrice
                && playerData.integer(forKey: "level") >= hotPepperLevel
            {
                money = money - hotPepperPrice
                plotInfo.set(13, forKey: "\(plotTapped)")
                choiceWasMade()
            }
            
            if choiceBeans.contains(positionOfTouch) && playerData.integer(forKey: "money") >= beansPrice
                && playerData.integer(forKey: "level") >= beansLevel
            {
                money = money - beansPrice
                plotInfo.set(15, forKey: "\(plotTapped)")
                choiceWasMade()
            }
            
            if choiceCorn.contains(positionOfTouch) && playerData.integer(forKey: "money") >= cornPrice
                && playerData.integer(forKey: "level") >= cornLevel
            {
                money = money - cornPrice
                plotInfo.set(17, forKey: "\(plotTapped)")
                choiceWasMade()
            }
            
            if choicePepper.contains(positionOfTouch) && playerData.integer(forKey: "money") >= pepperPrice
                && playerData.integer(forKey: "level") >= pepperLevel
            {
                money = money - pepperPrice
                plotInfo.set(19, forKey: "\(plotTapped)")
                choiceWasMade()
            }
            
            if choiceCarrot.contains(positionOfTouch) && playerData.integer(forKey: "money") >= carrotPrice
                && playerData.integer(forKey: "level") >= carrotLevel
            {
                money = money - carrotPrice
                plotInfo.set(21, forKey: "\(plotTapped)")
                choiceWasMade()
            }
            
            if choiceCabbage.contains(positionOfTouch) && playerData.integer(forKey: "money") >= cabbagePrice
                && playerData.integer(forKey: "level") >= cabbageLevel
            {
                money = money - cabbagePrice
                plotInfo.set(23, forKey: "\(plotTapped)")
                choiceWasMade()
            }
        }
    }
}

