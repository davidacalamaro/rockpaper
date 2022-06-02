//
//  firstView.swift
//  rockpaper
//
//  Created by david on 11/12/21.
//

import UIKit
var aiChoice : Int = 0
var aiWin: Bool = false
var aiLose: Bool = false
var tie: Bool = false
var aiPoints: Int = 0
var userPoints: Int = 0
class firstView: UIViewController
{
    @IBOutlet weak var choiceLabel: UILabel!
    @IBOutlet weak var aiLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var userimage: UIImageView!
    
    @IBOutlet weak var aiImage: UIImageView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    
    
    
    @IBAction func rock(_ sender: UIButton)
    {
        userimage.image = UIImage(named: "rock")
        aiChoice = Int.random(in: 1...9)
        if aiChoice == 1 || aiChoice == 2 || aiChoice == 3 || aiChoice == 4 || aiChoice == 5 || aiChoice == 6
        {
            aiLose = true
            aiImage.image = UIImage(named: "scissors")
        }
        
        else if aiChoice == 7 || aiChoice == 8
        {
            aiWin = true
            aiImage.image = UIImage(named: "paper")
        }
        
        else
        {
            tie = true
            aiImage.image = UIImage(named: "rock")
        }
    check()
        print(aiChoice)
        aiWin = false
        aiLose = false
        tie = false
        aiChoice = 0
    }
    
    @IBAction func paper(_ sender: UIButton)
    {
        userimage.image = UIImage(named: "paper")
        aiChoice = Int.random(in: 1...9)
        if aiChoice == 1 || aiChoice == 2 || aiChoice == 3 || aiChoice == 4 || aiChoice == 5 || aiChoice == 6
        {
            aiLose = true
            aiImage.image = UIImage(named: "rock")
        }
        
        else if aiChoice == 7 || aiChoice == 8
        {
            aiWin = true
            aiImage.image = UIImage(named: "scissors")
        }
        
        else
        {
            tie = true
            aiImage.image = UIImage(named: "paper")
        }
    check()
        print(aiChoice)
        aiWin = false
        aiLose = false
        tie = false
        aiChoice = 0
    }
    
    @IBAction func scissors(_ sender: UIButton)
    {
        userimage.image = UIImage(named: "scissors")
        aiChoice = Int.random(in: 1...9)
        if aiChoice == 1 || aiChoice == 2 || aiChoice == 3 || aiChoice == 4 || aiChoice == 5 || aiChoice == 6
        {
            aiLose = true
            aiImage.image = UIImage(named: "paper")
        }
        
        else if aiChoice == 7 || aiChoice == 8
        {
            aiWin = true
            aiImage.image = UIImage(named: "rock")
        }
        
        else
        {
            tie = true
            aiImage.image = UIImage(named: "scissors")
        }
    check()
        print(aiChoice)
        aiWin = false
        aiLose = false
        tie = false
        aiChoice = 0
        
        }
    
   
    
    
    @IBAction func reset(_ sender: UIButton)
    {
        reset()
        aiWin = false
        aiLose = false
        tie = false
        aiChoice = 0
        choiceLabel.text = "pick a choice"
    }
    
    
    func reset()
    {
        
        userPoints = 0
        userLabel.text = "0"
        aiPoints = 0
        aiLabel.text = "0"
        userimage.image = nil
    }
    
    
    
    
    
    func check()
    {
        if aiWin == true
        {
            choiceLabel.text = "you lost"
            aiPoints+=1
            aiLabel.text = "\(aiPoints)"
            
        }

        else if aiLose == true
        {
            choiceLabel.text = "you won"
            userPoints+=1
            userLabel.text = "\(userPoints)"
            
        }
        
        else if tie == true
        {
            choiceLabel.text = "tie, try again"

        }
        
        
    }
    
    
}

// uiView.animate
