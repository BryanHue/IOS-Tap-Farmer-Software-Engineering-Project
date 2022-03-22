//
//  Plots.swift
//  Farm4
//
//  Created by Austin Collier on 3/1/19.
//  Copyright © 2019 Austin Collier. All rights reserved.
// aksjdhaks

import Foundation
import SpriteKit

//****************BOX CROP AND PLOT INITIALIZE**************************************************************

let box00 = SKSpriteNode(); let box01 = SKSpriteNode(); let box02 = SKSpriteNode()
let box03 = SKSpriteNode(); let box04 = SKSpriteNode(); let box05 = SKSpriteNode()
let box06 = SKSpriteNode(); let box07 = SKSpriteNode(); let box08 = SKSpriteNode()
let box10 = SKSpriteNode(); let box11 = SKSpriteNode(); let box12 = SKSpriteNode()
let box13 = SKSpriteNode(); let box14 = SKSpriteNode(); let box15 = SKSpriteNode()
let box16 = SKSpriteNode(); let box17 = SKSpriteNode(); let box18 = SKSpriteNode()
let box20 = SKSpriteNode(); let box21 = SKSpriteNode(); let box22 = SKSpriteNode()
let box23 = SKSpriteNode(); let box24 = SKSpriteNode(); let box25 = SKSpriteNode()
let box26 = SKSpriteNode(); let box27 = SKSpriteNode(); let box28 = SKSpriteNode()
let box30 = SKSpriteNode(); let box31 = SKSpriteNode(); let box32 = SKSpriteNode()
let box33 = SKSpriteNode(); let box34 = SKSpriteNode(); let box35 = SKSpriteNode()
let box36 = SKSpriteNode(); let box37 = SKSpriteNode(); let box38 = SKSpriteNode()
let box40 = SKSpriteNode(); let box41 = SKSpriteNode(); let box42 = SKSpriteNode()
let box43 = SKSpriteNode(); let box44 = SKSpriteNode(); let box45 = SKSpriteNode()
let box46 = SKSpriteNode(); let box47 = SKSpriteNode(); let box48 = SKSpriteNode()
let box09 = SKSpriteNode(); let box29 = SKSpriteNode(); let box49 = SKSpriteNode()

let plot00 = SKSpriteNode(); let plot01 = SKSpriteNode(); let plot02 = SKSpriteNode()
let plot03 = SKSpriteNode(); let plot04 = SKSpriteNode(); let plot05 = SKSpriteNode()
let plot06 = SKSpriteNode(); let plot07 = SKSpriteNode(); let plot08 = SKSpriteNode()
let plot10 = SKSpriteNode(); let plot11 = SKSpriteNode(); let plot12 = SKSpriteNode()
let plot13 = SKSpriteNode(); let plot14 = SKSpriteNode(); let plot15 = SKSpriteNode()
let plot16 = SKSpriteNode(); let plot17 = SKSpriteNode(); let plot18 = SKSpriteNode()
let plot20 = SKSpriteNode(); let plot21 = SKSpriteNode(); let plot22 = SKSpriteNode()
let plot23 = SKSpriteNode(); let plot24 = SKSpriteNode(); let plot25 = SKSpriteNode()
let plot26 = SKSpriteNode(); let plot27 = SKSpriteNode(); let plot28 = SKSpriteNode()
let plot30 = SKSpriteNode(); let plot31 = SKSpriteNode(); let plot32 = SKSpriteNode()
let plot33 = SKSpriteNode(); let plot34 = SKSpriteNode(); let plot35 = SKSpriteNode()
let plot36 = SKSpriteNode(); let plot37 = SKSpriteNode(); let plot38 = SKSpriteNode()
let plot40 = SKSpriteNode(); let plot41 = SKSpriteNode(); let plot42 = SKSpriteNode()
let plot43 = SKSpriteNode(); let plot44 = SKSpriteNode(); let plot45 = SKSpriteNode()
let plot46 = SKSpriteNode(); let plot47 = SKSpriteNode(); let plot48 = SKSpriteNode()
let plot09 = SKSpriteNode(); let plot29 = SKSpriteNode(); let plot49 = SKSpriteNode()

let crop00 = SKSpriteNode(); let crop01 = SKSpriteNode(); let crop02 = SKSpriteNode()
let crop03 = SKSpriteNode(); let crop04 = SKSpriteNode(); let crop05 = SKSpriteNode()
let crop06 = SKSpriteNode(); let crop07 = SKSpriteNode(); let crop08 = SKSpriteNode()
let crop10 = SKSpriteNode(); let crop11 = SKSpriteNode(); let crop12 = SKSpriteNode()
let crop13 = SKSpriteNode(); let crop14 = SKSpriteNode(); let crop15 = SKSpriteNode()
let crop16 = SKSpriteNode(); let crop17 = SKSpriteNode(); let crop18 = SKSpriteNode()
let crop20 = SKSpriteNode(); let crop21 = SKSpriteNode(); let crop22 = SKSpriteNode()
let crop23 = SKSpriteNode(); let crop24 = SKSpriteNode(); let crop25 = SKSpriteNode()
let crop26 = SKSpriteNode(); let crop27 = SKSpriteNode(); let crop28 = SKSpriteNode()
let crop30 = SKSpriteNode(); let crop31 = SKSpriteNode(); let crop32 = SKSpriteNode()
let crop33 = SKSpriteNode(); let crop34 = SKSpriteNode(); let crop35 = SKSpriteNode()
let crop36 = SKSpriteNode(); let crop37 = SKSpriteNode(); let crop38 = SKSpriteNode()
let crop40 = SKSpriteNode(); let crop41 = SKSpriteNode(); let crop42 = SKSpriteNode()
let crop43 = SKSpriteNode(); let crop44 = SKSpriteNode(); let crop45 = SKSpriteNode()
let crop46 = SKSpriteNode(); let crop47 = SKSpriteNode(); let crop48 = SKSpriteNode()
let crop09 = SKSpriteNode(); let crop29 = SKSpriteNode(); let crop49 = SKSpriteNode()

//****************USER DEFAULTS**********************************************************************

let plotInfo = UserDefaults();
let plotTime = UserDefaults();
let playerData = UserDefaults();
let startMoney = UserDefaults();

var plot00Status = plotInfo.integer(forKey: "plot00"); var plot01Status = plotInfo.integer(forKey: "plot01")
var plot02Status = plotInfo.integer(forKey: "plot02"); var plot03Status = plotInfo.integer(forKey: "plot03")
var plot04Status = plotInfo.integer(forKey: "plot04"); var plot05Status = plotInfo.integer(forKey: "plot05")
var plot06Status = plotInfo.integer(forKey: "plot06"); var plot07Status = plotInfo.integer(forKey: "plot07")
var plot08Status = plotInfo.integer(forKey: "plot08"); var plot09Status = plotInfo.integer(forKey: "plot09")
var plot10Status = plotInfo.integer(forKey: "plot10"); var plot11Status = plotInfo.integer(forKey: "plot11")
var plot12Status = plotInfo.integer(forKey: "plot12"); var plot13Status = plotInfo.integer(forKey: "plot13")
var plot14Status = plotInfo.integer(forKey: "plot14"); var plot15Status = plotInfo.integer(forKey: "plot15")
var plot16Status = plotInfo.integer(forKey: "plot16"); var plot17Status = plotInfo.integer(forKey: "plot17")
var plot18Status = plotInfo.integer(forKey: "plot18");
var plot20Status = plotInfo.integer(forKey: "plot20"); var plot21Status = plotInfo.integer(forKey: "plot21")
var plot22Status = plotInfo.integer(forKey: "plot22"); var plot23Status = plotInfo.integer(forKey: "plot23")
var plot24Status = plotInfo.integer(forKey: "plot24"); var plot25Status = plotInfo.integer(forKey: "plot25")
var plot26Status = plotInfo.integer(forKey: "plot26"); var plot27Status = plotInfo.integer(forKey: "plot27")
var plot28Status = plotInfo.integer(forKey: "plot28"); var plot29Status = plotInfo.integer(forKey: "plot29")
var plot30Status = plotInfo.integer(forKey: "plot30"); var plot31Status = plotInfo.integer(forKey: "plot31")
var plot32Status = plotInfo.integer(forKey: "plot32"); var plot33Status = plotInfo.integer(forKey: "plot33")
var plot34Status = plotInfo.integer(forKey: "plot34"); var plot35Status = plotInfo.integer(forKey: "plot35")
var plot36Status = plotInfo.integer(forKey: "plot36"); var plot37Status = plotInfo.integer(forKey: "plot37")
var plot38Status = plotInfo.integer(forKey: "plot38")
var plot40Status = plotInfo.integer(forKey: "plot40"); var plot41Status = plotInfo.integer(forKey: "plot41")
var plot42Status = plotInfo.integer(forKey: "plot42"); var plot43Status = plotInfo.integer(forKey: "plot43")
var plot44Status = plotInfo.integer(forKey: "plot44"); var plot45Status = plotInfo.integer(forKey: "plot45")
var plot46Status = plotInfo.integer(forKey: "plot46"); var plot47Status = plotInfo.integer(forKey: "plot47")
var plot48Status = plotInfo.integer(forKey: "plot48"); var plot49Status = plotInfo.integer(forKey: "plot49")

var plot00time = plotInfo.integer(forKey: "plot00time"); var plot01time = plotInfo.integer(forKey: "plot01time")
var plot02time = plotInfo.integer(forKey: "plot02time"); var plot03time = plotInfo.integer(forKey: "plot03time")
var plot04time = plotInfo.integer(forKey: "plot04time"); var plot05time = plotInfo.integer(forKey: "plot05time")
var plot06time = plotInfo.integer(forKey: "plot06time"); var plot07time = plotInfo.integer(forKey: "plot07time")
var plot08time = plotInfo.integer(forKey: "plot08time"); var plot09time = plotInfo.integer(forKey: "plot09time")
var plot10time = plotInfo.integer(forKey: "plot10time"); var plot11time = plotInfo.integer(forKey: "plot11time")
var plot12time = plotInfo.integer(forKey: "plot12time"); var plot13time = plotInfo.integer(forKey: "plot13time")
var plot14time = plotInfo.integer(forKey: "plot14time"); var plot15time = plotInfo.integer(forKey: "plot15time")
var plot16time = plotInfo.integer(forKey: "plot16time"); var plot17time = plotInfo.integer(forKey: "plot17time")
var plot18time = plotInfo.integer(forKey: "plot18time");
var plot20time = plotInfo.integer(forKey: "plot20time"); var plot21time = plotInfo.integer(forKey: "plot21time")
var plot22time = plotInfo.integer(forKey: "plot22time"); var plot23time = plotInfo.integer(forKey: "plot23time")
var plot24time = plotInfo.integer(forKey: "plot24time"); var plot25time = plotInfo.integer(forKey: "plot25time")
var plot26time = plotInfo.integer(forKey: "plot26time"); var plot27time = plotInfo.integer(forKey: "plot27time")
var plot28time = plotInfo.integer(forKey: "plot28time"); var plot29time = plotInfo.integer(forKey: "plot29time")
var plot30time = plotInfo.integer(forKey: "plot30time"); var plot31time = plotInfo.integer(forKey: "plot31time")
var plot32time = plotInfo.integer(forKey: "plot32time"); var plot33time = plotInfo.integer(forKey: "plot33time")
var plot34time = plotInfo.integer(forKey: "plot34time"); var plot35time = plotInfo.integer(forKey: "plot35time")
var plot36time = plotInfo.integer(forKey: "plot36time"); var plot37time = plotInfo.integer(forKey: "plot37time")
var plot38time = plotInfo.integer(forKey: "plot38time")
var plot40time = plotInfo.integer(forKey: "plot40time"); var plot41time = plotInfo.integer(forKey: "plot41time")
var plot42time = plotInfo.integer(forKey: "plot42time"); var plot43time = plotInfo.integer(forKey: "plot43time")
var plot44time = plotInfo.integer(forKey: "plot44time"); var plot45time = plotInfo.integer(forKey: "plot45time")
var plot46time = plotInfo.integer(forKey: "plot46time"); var plot47time = plotInfo.integer(forKey: "plot47time")
var plot48time = plotInfo.integer(forKey: "plot48time"); var plot49time = plotInfo.integer(forKey: "plot49time")

//****************LABELS*********************************************************************************

//Labels for Cost
let strawberryCostLabel = SKLabelNode(fontNamed: font)
let tomatoCostLabel = SKLabelNode(fontNamed: font)
let onionCostLabel = SKLabelNode(fontNamed: font)
let cucumberCostLabel = SKLabelNode(fontNamed: font)
let brocolliCostLabel = SKLabelNode(fontNamed: font)
let watermelonCostLabel = SKLabelNode(fontNamed: font)
let hotPepperCostLabel = SKLabelNode(fontNamed: font)
let beansCostLabel = SKLabelNode(fontNamed: font)
let cornCostLabel = SKLabelNode(fontNamed: font)
let cabbageCostLabel = SKLabelNode(fontNamed: font)
let pepperCostLabel = SKLabelNode(fontNamed: font)
let carrotCostLabel = SKLabelNode(fontNamed: font)

//Labels for Sell Price
let strawberryPriceLabel = SKLabelNode(fontNamed: font)
let tomatoPriceLabel = SKLabelNode(fontNamed: font)
let onionPriceLabel = SKLabelNode(fontNamed: font)
let cucumberPriceLabel = SKLabelNode(fontNamed: font)
let brocolliPriceLabel = SKLabelNode(fontNamed: font)
let watermelonPriceLabel = SKLabelNode(fontNamed: font)
let hotPepperPriceLabel = SKLabelNode(fontNamed: font)
let beansPriceLabel = SKLabelNode(fontNamed: font)
let cornPriceLabel = SKLabelNode(fontNamed: font)
let cabbagePriceLabel = SKLabelNode(fontNamed: font)
let pepperPriceLabel = SKLabelNode(fontNamed: font)
let carrotPriceLabel = SKLabelNode(fontNamed: font)

//Labels for Time
let strawberryTimeLabel = SKLabelNode(fontNamed: font)
let tomatoTimeLabel = SKLabelNode(fontNamed: font)
let onionTimeLabel = SKLabelNode(fontNamed: font)
let cucumberTimeLabel = SKLabelNode(fontNamed: font)
let brocolliTimeLabel = SKLabelNode(fontNamed: font)
let watermelonTimeLabel = SKLabelNode(fontNamed: font)
let hotPepperTimeLabel = SKLabelNode(fontNamed: font)
let beansTimeLabel = SKLabelNode(fontNamed: font)
let cornTimeLabel = SKLabelNode(fontNamed: font)
let cabbageTimeLabel = SKLabelNode(fontNamed: font)
let pepperTimeLabel = SKLabelNode(fontNamed: font)
let carrotTimeLabel = SKLabelNode(fontNamed: font)

//Labels for Level
let strawberryLevelLabel = SKLabelNode(fontNamed: font)
let tomatoLevelLabel = SKLabelNode(fontNamed: font)
let onionLevelLabel = SKLabelNode(fontNamed: font)
let cucumberLevelLabel = SKLabelNode(fontNamed: font)
let brocolliLevelLabel = SKLabelNode(fontNamed: font)
let watermelonLevelLabel = SKLabelNode(fontNamed: font)
let hotPepperLevelLabel = SKLabelNode(fontNamed: font)
let beansLevelLabel = SKLabelNode(fontNamed: font)
let cornLevelLabel = SKLabelNode(fontNamed: font)
let cabbageLevelLabel = SKLabelNode(fontNamed: font)
let pepperLevelLabel = SKLabelNode(fontNamed: font)
let carrotLevelLabel = SKLabelNode(fontNamed: font)
let moneyLabel = SKLabelNode(fontNamed: font)

//****************VARIABLES ******************************************************************

var plotTapped = String()
var plotTappedTime = String()
var cropTapped = SKSpriteNode()


var money = playerData.integer(forKey: "money")
var cropGrown = playerData.integer(forKey: "cropGrown")
var totalMoney = playerData.integer(forKey : "totalMoney")

let menuShadow  = SKSpriteNode()
let emptyMenuBG  = SKSpriteNode()
var firstLaunch = startMoney.bool(forKey: "firstLaunch")
var backgroundMusic = SKAudioNode(fileNamed: "Whimsical-Popsicle")

//****************ARRAYS*********************************************************************************
let plots = [plot00, plot01, plot02, plot03, plot04, plot05, plot06, plot07, plot08, plot09,
             plot10, plot11, plot12, plot13, plot14, plot15, plot16, plot17, plot18, plot20,
             plot21, plot22, plot23, plot24, plot25, plot26, plot27, plot28, plot29, plot30,
             plot31, plot32, plot33, plot34, plot35, plot36, plot37, plot38, plot40, plot41,
             plot42, plot43, plot44, plot45, plot46, plot47, plot48, plot49]

let boxes = [box00, box01, box02, box03, box04, box05, box06, box07, box08, box09, box10, box11, box12,
             box13, box14, box15, box16, box17, box18, box20, box21, box22, box23, box24, box25, box26,
             box27, box28, box29, box30, box31, box32, box33, box34, box35, box36, box37, box38, box40,
             box41, box42, box43, box44, box45, box46, box47, box48, box49]

let crops = [crop00, crop01, crop02, crop03, crop04, crop05, crop06, crop07, crop08, crop09,
             crop10, crop11, crop12, crop13, crop14, crop15, crop16, crop17, crop18, crop20,
             crop21, crop22, crop23, crop24, crop25, crop26, crop27, crop28, crop29, crop30,
             crop31, crop32, crop33, crop34, crop35, crop36, crop37, crop38, crop40, crop41,
             crop42, crop43, crop44, crop45, crop46, crop47, crop48, crop49]

let cropAlphaValue = [18, 16, 14, 12, 10, 8, 6, 4, 2, 0,
                      17, 15, 13, 11, 9, 7, 5, 3, 1,
                      18, 16, 14, 12, 10, 8, 6, 4, 2, 0,
                      17, 15, 13, 11, 9, 7, 5, 3, 1,
                      18, 16, 14, 12, 10, 8, 6, 4, 2, 0,]

let plotNames = ["plot00", "plot01", "plot02", "plot03", "plot04", "plot05", "plot06", "plot07",
                 "plot08", "plot09", "plot10", "plot11", "plot12", "plot13", "plot14", "plot15",
                 "plot16", "plot17", "plot18", "plot20", "plot21", "plot22", "plot23", "plot24",
                 "plot25", "plot26", "plot27", "plot28", "plot29", "plot30", "plot31", "plot32",
                 "plot33", "plot34", "plot35", "plot36", "plot37", "plot38", "plot40", "plot41",
                 "plot42", "plot43", "plot44", "plot45", "plot46", "plot47", "plot48", "plot49"]

let labelArray = [strawberryCostLabel, strawberryPriceLabel, strawberryLevelLabel,strawberryTimeLabel, //0
                  tomatoCostLabel, tomatoPriceLabel, tomatoLevelLabel,tomatoTimeLabel, //4
                  onionCostLabel, onionPriceLabel, onionLevelLabel,onionTimeLabel, //8
                  cucumberCostLabel, cucumberPriceLabel, cucumberLevelLabel,cucumberTimeLabel, //12
                  brocolliCostLabel, brocolliPriceLabel, brocolliLevelLabel,brocolliTimeLabel, //16
                  watermelonCostLabel, watermelonPriceLabel, watermelonLevelLabel,watermelonTimeLabel, //20
                  hotPepperCostLabel, hotPepperPriceLabel, hotPepperLevelLabel,hotPepperTimeLabel, //24
                  cabbageCostLabel, cabbagePriceLabel, cabbageLevelLabel,cabbageTimeLabel, //28
                  beansCostLabel, beansPriceLabel, beansLevelLabel,beansTimeLabel, //32
                  cornCostLabel, cornPriceLabel, cornLevelLabel,cornTimeLabel, //36
                  pepperCostLabel, pepperPriceLabel, pepperLevelLabel,pepperTimeLabel,//40
                  carrotCostLabel, carrotPriceLabel, carrotLevelLabel,carrotTimeLabel] //44
//******************************************************************************************************

//plant values***********************************************
let plantValues = [10,  1,   2,   0,    //Strawberry Time, Price, SellPrice, Level
                   20,  3,   5,   2,    //Tomato     Time, Price, SellPrice, Level
                   40,  9,   15,  4,    //Onion      Time, Price, SellPrice, Level
                   60,  16,  25,  6,    //Cucumber   Time, Price, SellPrice, Level
                   80,  22,  35,  8,    //Brocolli   Time, Price, SellPrice, Level
                   100, 30,  45,  10,   //Watermelon Time, Price, SellPrice, Level
                   120, 42,  60,  12,   //HotPepper  Time, Price, SellPrice, Level
                   140, 50,  75,  14,   //Cabbage    Time, Price, SellPrice, Level
                   160, 64,  90,  16,   //Beans      Time, Price, SellPrice, Level
                   180, 82,  100, 18,   //Corn       Time, Price, SellPrice, Level
                   200, 100, 150, 20,   //Pepper     Time, Price, SellPrice, Level
                   220, 200, 400, 22]   //Carrot     Time, Price, SellPrice, Level

let strawTime = 10;       let strawPrice = 1;       let strawSellPrice = 2;
let strawExp = 1;         let strawLevel = 0;
let tomatoTime = 30;      let tomatoPrice = 3;      let tomatoSellPrice = 7;
let tomatoExp = 2;        let tomatoLevel = 2;
let onionTime = 60;       let onionPrice = 9;       let onionSellPrice = 15;
let onionExp = 3;         let onionLevel = 3;
let cucumberTime = 180;    let cucumberPrice = 16;   let cucumberSellPrice = 27;
let cucumberExp = 4;      let cucumberLevel = 4;
let brocolliTime = 420;    let brocolliPrice = 22;   let brocolliSellPrice = 41;
let brocolliExp = 5;      let brocolliLevel = 5;
let watermelonTime = 900; let watermelonPrice = 30; let watermelonSellPrice = 60;
let watermelonExp = 6;    let watermelonLevel = 6;
let hotPepperTime = 1500;  let hotPepperPrice = 42;  let hotPepperSellPrice = 79;
let hotPepperExp = 7;     let hotPepperLevel = 7;
let cabbageTime = 2400;    let cabbagePrice = 50;    let cabbageSellPrice = 88;
let cabbageExp = 8;       let cabbageLevel = 8;
let beansTime = 3600;      let beansPrice = 64;      let beansSellPrice = 104;
let beansExp = 9;         let beansLevel = 9;
let cornTime = 5400;       let cornPrice = 82;       let cornSellPrice = 123;
let cornExp = 10;         let cornLevel = 10;
let pepperTime = 7200;     let pepperPrice = 100;    let pepperSellPrice = 143;
let pepperExp = 11;       let pepperLevel = 11;
let carrotTime = 10800;     let carrotPrice = 150;    let carrotSellPrice = 220;
let carrotExp = 12;       let carrotLevel = 12;

//EXPERIENCE SYSTEM******************************************************
var experience = playerData.integer(forKey: "experience")
var level = playerData.integer(forKey: "level")
var expRequired = CGFloat()


func checkLevel()
{
    if playerData.integer(forKey: "level") < 12
    {
        if experience >= Int(expRequired)
        {
            levelUp()
        }
    }
}

func levelUp()
{
    experience = experience - Int(expRequired)
    level = level + 1
    playerData.set(level, forKey: "level")
    playerData.set(experience, forKey: "experience")
}

func getLabelColors()
{
    var minIndex = Int()
    minIndex = (playerData.integer(forKey: "level")) * 4
    if minIndex < 47
    {
        for index in minIndex...47
        {
            labelArray[index].fontColor = SKColor.red
        }
    }
}

func getExpRequired()
{
    expRequired = CGFloat(30)
    if (playerData.integer(forKey: "level")-1) > 0
    {
        for _ in 1...(playerData.integer(forKey: "level")-1)
        {
            expRequired = expRequired * 2
        }
    }
}
//****************************************************************


public enum Model : String {
    case simulator     = "simulator/sandbox",
    //iPod
    iPod1              = "iPod 1",
    iPod2              = "iPod 2",
    iPod3              = "iPod 3",
    iPod4              = "iPod 4",
    iPod5              = "iPod 5",
    //iPad
    iPad2              = "iPad 2",
    iPad3              = "iPad 3",
    iPad4              = "iPad 4",
    iPadAir            = "iPad Air ",
    iPadAir2           = "iPad Air 2",
    iPad5              = "iPad 5", //aka iPad 2017
    iPad6              = "iPad 6", //aka iPad 2018
    //iPad mini
    iPadMini           = "iPad Mini",
    iPadMini2          = "iPad Mini 2",
    iPadMini3          = "iPad Mini 3",
    iPadMini4          = "iPad Mini 4",
    //iPad pro
    iPadPro9_7         = "iPad Pro 9.7\"",
    iPadPro10_5        = "iPad Pro 10.5\"",
    iPadPro12_9        = "iPad Pro 12.9\"",
    iPadPro2_12_9      = "iPad Pro 2 12.9\"",
    //iPhone
    iPhone4            = "iPhone 4",
    iPhone4S           = "iPhone 4S",
    iPhone5            = "iPhone 5",
    iPhone5S           = "iPhone 5S",
    iPhone5C           = "iPhone 5C",
    iPhone6            = "iPhone 6",
    iPhone6plus        = "iPhone 6 Plus",
    iPhone6S           = "iPhone 6S",
    iPhone6Splus       = "iPhone 6S Plus",
    iPhoneSE           = "iPhone SE",
    iPhone7            = "iPhone 7",
    iPhone7plus        = "iPhone 7 Plus",
    iPhone8            = "iPhone 8",
    iPhone8plus        = "iPhone 8 Plus",
    iPhoneX            = "iPhone X",
    iPhoneXS           = "iPhone XS",
    iPhoneXSMax        = "iPhone XS Max",
    iPhoneXR           = "iPhone XR",
    //Apple TV
    AppleTV            = "Apple TV",
    AppleTV_4K         = "Apple TV 4K",
    unrecognized       = "?unrecognized?"
}

// #-#-#-#-#-#-#-#-#-#-#-#-#-#-#
//MARK: UIDevice extensions
// #-#-#-#-#-#-#-#-#-#-#-#-#-#-#

public extension UIDevice {
    var type: Model {
        var systemInfo = utsname()
        uname(&systemInfo)
        let modelCode = withUnsafePointer(to: &systemInfo.machine) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) {
                ptr in String.init(validatingUTF8: ptr)
                
            }
        }
        var modelMap : [ String : Model ] = [
            "i386"      : .simulator,
            "x86_64"    : .simulator,
            //iPod
            "iPod1,1"   : .iPod1,
            "iPod2,1"   : .iPod2,
            "iPod3,1"   : .iPod3,
            "iPod4,1"   : .iPod4,
            "iPod5,1"   : .iPod5,
            //iPad
            "iPad2,1"   : .iPad2,
            "iPad2,2"   : .iPad2,
            "iPad2,3"   : .iPad2,
            "iPad2,4"   : .iPad2,
            "iPad3,1"   : .iPad3,
            "iPad3,2"   : .iPad3,
            "iPad3,3"   : .iPad3,
            "iPad3,4"   : .iPad4,
            "iPad3,5"   : .iPad4,
            "iPad3,6"   : .iPad4,
            "iPad4,1"   : .iPadAir,
            "iPad4,2"   : .iPadAir,
            "iPad4,3"   : .iPadAir,
            "iPad5,3"   : .iPadAir2,
            "iPad5,4"   : .iPadAir2,
            "iPad6,11"  : .iPad5, //aka iPad 2017
            "iPad6,12"  : .iPad5,
            "iPad7,5"   : .iPad6, //aka iPad 2018
            "iPad7,6"   : .iPad6,
            //iPad mini
            "iPad2,5"   : .iPadMini,
            "iPad2,6"   : .iPadMini,
            "iPad2,7"   : .iPadMini,
            "iPad4,4"   : .iPadMini2,
            "iPad4,5"   : .iPadMini2,
            "iPad4,6"   : .iPadMini2,
            "iPad4,7"   : .iPadMini3,
            "iPad4,8"   : .iPadMini3,
            "iPad4,9"   : .iPadMini3,
            "iPad5,1"   : .iPadMini4,
            "iPad5,2"   : .iPadMini4,
            //iPad pro
            "iPad6,3"   : .iPadPro9_7,
            "iPad6,4"   : .iPadPro9_7,
            "iPad7,3"   : .iPadPro10_5,
            "iPad7,4"   : .iPadPro10_5,
            "iPad6,7"   : .iPadPro12_9,
            "iPad6,8"   : .iPadPro12_9,
            "iPad7,1"   : .iPadPro2_12_9,
            "iPad7,2"   : .iPadPro2_12_9,
            //iPhone
            "iPhone3,1" : .iPhone4,
            "iPhone3,2" : .iPhone4,
            "iPhone3,3" : .iPhone4,
            "iPhone4,1" : .iPhone4S,
            "iPhone5,1" : .iPhone5,
            "iPhone5,2" : .iPhone5,
            "iPhone5,3" : .iPhone5C,
            "iPhone5,4" : .iPhone5C,
            "iPhone6,1" : .iPhone5S,
            "iPhone6,2" : .iPhone5S,
            "iPhone7,1" : .iPhone6plus,
            "iPhone7,2" : .iPhone6,
            "iPhone8,1" : .iPhone6S,
            "iPhone8,2" : .iPhone6Splus,
            "iPhone8,4" : .iPhoneSE,
            "iPhone9,1" : .iPhone7,
            "iPhone9,3" : .iPhone7,
            "iPhone9,2" : .iPhone7plus,
            "iPhone9,4" : .iPhone7plus,
            "iPhone10,1" : .iPhone8,
            "iPhone10,4" : .iPhone8,
            "iPhone10,2" : .iPhone8plus,
            "iPhone10,5" : .iPhone8plus,
            "iPhone10,3" : .iPhoneX,
            "iPhone10,6" : .iPhoneX,
            "iPhone11,2" : .iPhoneXS,
            "iPhone11,4" : .iPhoneXSMax,
            "iPhone11,6" : .iPhoneXSMax,
            "iPhone11,8" : .iPhoneXR,
            //AppleTV
            "AppleTV5,3" : .AppleTV,
            "AppleTV6,2" : .AppleTV_4K
        ]
        
        if let model = modelMap[String.init(validatingUTF8: modelCode!)!] {
            if model == .simulator {
                if let simModelCode = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] {
                    if let simModel = modelMap[String.init(validatingUTF8: simModelCode)!] {
                        return simModel
                    }
                }
            }
            return model
        }
        return Model.unrecognized
    }
}

let deviceType = UIDevice().type
let device = String("\(deviceType)")
