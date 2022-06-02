//
//  secondView.swift
//  rockpaper
//
//  Created by david on 11/12/21.
//

import UIKit
var aiChoice2 : Int = 0
var aiWin2: Bool = false
var aiLose2: Bool = false
var tie2: Bool = false
var aiPoints2: Int = 0
var userPoints2: Int = 0
class secondView: UIViewController
{
    @IBOutlet weak var choiceLabel2: UILabel!
    @IBOutlet weak var userLabel2: UILabel!
    @IBOutlet weak var aiLabel2: UILabel!
    
    @IBOutlet weak var userimage2: UIImageView!
    @IBOutlet weak var aiImage2: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func rock2(_ sender: UIButton)
    {
        userimage2.image = UIImage(named: "rock")
        aiChoice2 = Int.random(in: 1...9)
            if aiChoice2 == 1 || aiChoice2 == 2 || aiChoice2 == 3
            {
                aiLose2 = true
                aiImage2.image = UIImage(named: "scissors")
            }
            
            else if aiChoice2 == 4 || aiChoice2 == 5 || aiChoice2 == 6 || aiChoice2 == 7
            {
                aiWin2 = true
                aiImage2.image = UIImage(named: "paper]")
            }
            
            else
            {
                tie2 = true
                aiImage2.image = UIImage(named: "rock")
            }
        check2()
            print(aiChoice)
        aiWin2 = false
        aiLose2 = false
        tie2 = false
        aiChoice2 = 0
    }
    
    @IBAction func paper2(_ sender: UIButton)
    {
        userimage2.image = UIImage(named: "paper")
        aiChoice2 = Int.random(in: 1...9)
        if aiChoice2 == 1 || aiChoice2 == 2 || aiChoice2 == 3
        {
            aiLose2 = true
            aiImage2.image = UIImage(named: "rock")
        }
        
        else if aiChoice2 == 4 || aiChoice2 == 5 || aiChoice2 == 6 || aiChoice2 == 7
        {
            aiWin2 = true
            aiImage2.image = UIImage(named: "scissors")
        }
        
        else
        {
            tie2 = true
            aiImage2.image = UIImage(named: "paper")
        }
    check2()
        print(aiChoice)
        aiWin2 = false
        aiLose2 = false
        tie2 = false
        aiChoice2 = 0
    }
    
    @IBAction func scissors2(_ sender: UIButton)
    {
        userimage2.image = UIImage(named: "scissors")
        aiChoice2 = Int.random(in: 1...9)
        if aiChoice2 == 1 || aiChoice2 == 2 || aiChoice2 == 3
        {
            aiLose2 = true
            aiImage2.image = UIImage(named: "paper")
        }
        
        else if aiChoice2 == 4 || aiChoice2 == 5 || aiChoice2 == 6 || aiChoice2 == 7
        {
            aiWin2 = true
            aiImage2.image = UIImage(named: "rock")
        }
        
        else
        {
            tie2 = true
            aiImage2.image = UIImage(named: "scissors")
        }
    check2()
        print(aiChoice)
        aiWin2 = false
        aiLose2 = false
        tie2 = false
        aiChoice2 = 0

    }
    
    
    @IBAction func reset2(_ sender: UIButton)
    {
    reset2()
        aiWin2 = false
        aiLose2 = false
        tie2 = false
        aiChoice2 = 0
        choiceLabel2.text = "pick a choice"
    }
    

    
    func reset2()
    {
        userPoints2 = 0
        userLabel2.text = "0"
        aiPoints2 = 0
        aiLabel2.text = "0"
    }
    
    
    
    
    
    func check2()
    {
        if aiWin2 == true
        {
            choiceLabel2.text = "you lost"
            aiPoints2+=1
            aiLabel2.text = "\(aiPoints2)"
        }

        else if aiLose2 == true
        {
            choiceLabel2.text = "you won"
            userPoints2+=1
            userLabel2.text = "\(userPoints2)"
        }
        
        else if tie2 == true
        {
            choiceLabel2.text = "tie, try again"
        }
        
        
    }
    
}

