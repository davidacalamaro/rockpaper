//
//  pvp.swift
//  rockpaper
//
//  Created by david on 12/2/21.
//

import UIKit
var topLocked = true
var bottomLocked = true
var topChoice = ""
var bottomChoice = ""
var result = ""
var toppoint = 0
var bottompoint = 0
class pvp: UIViewController
{
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var bottomImage: UIImageView!
    @IBOutlet weak var enterTop: UILabel!
    @IBOutlet weak var enterBottom: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var toppoints: UILabel!
    
    @IBOutlet weak var bottompoints: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        topLocked = true
         bottomLocked = true
         topChoice = ""
         bottomChoice = ""
         result = ""
         toppoint = 0
         bottompoint = 0
    }
    
    
    @IBAction func topRock(_ sender: UIButton)
    {
        
        enterTop.text = "top choice locked in"
        topLocked = false
        topChoice = "rock"
        check()
    }
    
    @IBAction func topPaper(_ sender: UIButton)
    {
        enterTop.text = "top choice locked in"
        topLocked = false
        topChoice = "paper"
        check()
    }
    
    @IBAction func topScissors(_ sender: Any)
    {
        enterTop.text = "top choice locked in"
        topLocked = false
        topChoice = "scissors"
        check()
    }
    
    @IBAction func topReset(_ sender: Any)
    {
        enterTop.text = "enter top choice"
        topLocked = true
        topChoice = ""
        topImage.image = nil
        winnerLabel.text = ""
    }
    
    
    
    @IBAction func bottomRock(_ sender: UIButton)
    {
        enterBottom.text = "bottom choice locked in"
        bottomLocked = false
        bottomChoice = "rock"
        check()
    }
    
    @IBAction func bottomPaper(_ sender: UIButton)
    {
        enterBottom.text = "bottom choice locked in"
        bottomLocked = false
        bottomChoice = "paper"
        check()
    }
    
    @IBAction func bottomScissors(_ sender: Any)
    {
        enterBottom.text = "bottom choice locked in"
        bottomLocked = false
        bottomChoice = "scissors"
        check()
    }
    
    @IBAction func bottomReset(_ sender: Any)
    {
        enterBottom.text = "enter bottom choice"
        bottomLocked = true
        bottomChoice = ""
        bottomImage.image = nil
        winnerLabel.text = ""
    }
    
        
    func check()
    {
        
        if topLocked == false && bottomLocked == false
    {
            
            topImage.image = UIImage(named: topChoice)
            bottomImage.image = UIImage(named: bottomChoice)
            
        if topChoice == "rock" && bottomChoice == "rock"
        
        {
            result = "tie"
        }
        
        else if topChoice == "rock" && bottomChoice == "paper"
        {
            result = "bottom wins"
        }
        
        else if topChoice == "rock" && bottomChoice == "scissors"
        {
            result = "top wins"
        }
            
            
        else if topChoice == "paper" && bottomChoice == "rock"
        {
            result = "top wins"
        }
        
            else if topChoice == "paper" && bottomChoice == "paper"
            {
                result = "tie"
            }
        
                else if topChoice == "paper" && bottomChoice == "scissors"
                {
                    result = "bottom wins"
                }
        
        
            
                else if topChoice == "scissors" && bottomChoice == "rock"
                {
                    result = "bottom wins"
                }
        
            
                else if topChoice == "scissors" && bottomChoice == "paper"
                {
                    result = "top wins"
                }
        
            
                else if topChoice == "scissors" && bottomChoice == "scissors"
                {
                    result = "tie"
                }
            enterTop.text = ""
            enterBottom.text = ""
    }
        
        
        if result == "tie"
        {
            winnerLabel.textColor = UIColor.orange
        }
        
        winnerLabel.text = result
        
        if result == "top wins"
        {
            toppoint+=1
            toppoints.text = "\(toppoint)"
        }
        
       else if result == "bottom wins"
        {
            bottompoint+=1
            bottompoints.text = "\(bottompoint)"
        }
        
        
        
        
    }
        
        
    @IBAction func fullReset(_ sender: UIButton)
    {
       fullreset()
    }
    
        func fullreset()
    {
        enterTop.text = "enter top choice"
        enterBottom.text = "enter bottom choice"
        topImage.image = nil
        bottomImage.image = nil
        topChoice = ""
        bottomChoice = ""
        result = ""
        bottomLocked = true
        topLocked = true
        toppoint = 0
        bottompoint = 0
    }
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

