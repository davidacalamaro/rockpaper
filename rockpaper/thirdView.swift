//
//  thirdView.swift
//  rockpaper
//
//  Created by david on 11/12/21.
//

import UIKit
var aiChoice3 : Int = 0
var aiWin3: Bool = false
var aiLose3: Bool = false
var tie3: Bool = false
var aiPoints3: Int = 0
var userPoints3: Int = 0
class thirdView: UIViewController
{
    @IBOutlet weak var choiceLabel3: UILabel!
    
    @IBOutlet weak var aiimage: UIImageView!
    @IBOutlet weak var userimage: UIImageView!
    @IBOutlet weak var userLabel3: UILabel!
    @IBOutlet weak var aiLabel3: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
        
    @IBAction func rock3(_ sender: UIButton)
    {
        userimage.image = UIImage(named: "rock")
        aiChoice3 = Int.random(in: 1...9)
        if aiChoice3 > 2 && aiChoice3 < 9
        {
            aiWin3 = true
            aiimage.image = UIImage(named: "paper")
        }

        else if aiChoice3 < 3
        {
            aiLose3 = true
            aiimage.image = UIImage(named: "scissors")
        }

        else
        {
            tie3 = true
            aiimage.image = UIImage(named: "rock")
        }
        check3()
        print(aiChoice3)
        aiWin3 = false
        aiLose3 = false
        tie3 = false
        aiChoice3 = 0
    }
    
    @IBAction func paper3(_ sender: UIButton)
    {
        userimage.image = UIImage(named: "paper")
        aiChoice3 = Int.random(in: 1...9)
        if aiChoice3 > 2 && aiChoice3 < 9
        {
            aiWin3 = true
            aiimage.image = UIImage(named: "scissors")
        }

        else if aiChoice3 > 3
        {
            aiLose3 = true
            aiimage.image = UIImage(named: "rock")
        }

        else
        {
            tie3 = true
            aiimage.image = UIImage(named: "paper")
        }
   check3()
        print(aiChoice3)
        aiWin3 = false
        aiLose3 = false
        tie3 = false
        aiChoice3 = 0
    }
    
    @IBAction func scissors3(_ sender: UIButton)
    {
        userimage.image = UIImage(named: "scissors")
        aiChoice3 = Int.random(in: 1...9)
        if aiChoice3 > 2 && aiChoice3 < 9
        {
            aiWin3 = true
            aiimage.image = UIImage(named: "rock")
        }

        else if aiChoice3 > 3
        {
            aiLose3 = true
            aiimage.image = UIImage(named: "paper")
        }

        else
        {
            tie3 = true
            aiimage.image = UIImage(named: "scissors")
        }
    check3()
        print(aiChoice3)
        aiWin3 = false
        aiLose3 = false
        tie3 = false
        aiChoice3 = 0
        
    }
    
    
    
    
    @IBAction func reset3(_ sender: UIButton)
    {
    reset3()
        aiWin3 = false
        aiLose3 = false
        tie3 = false
        aiChoice3 = 0
        choiceLabel3.text = "pick a choice"
    }
    
    func reset3()
    {
        userPoints3 = 0
        userLabel3.text = "0"
        aiPoints3 = 0
        aiLabel3.text = "0"
    }
    
    func check3()
    {
        if aiWin3 == true
        {
            choiceLabel3.text = "you lost"
            aiPoints3+=1
            aiLabel3.text = "\(aiPoints3)"
        }

        else if aiLose3 == true
        {
            choiceLabel3.text = "you win"
            userPoints3+=1
            userLabel3.text = "\(userPoints3)"
        }
        
        else if tie3 == true
        {
            choiceLabel3.text = "tie, try again"
        }
        
        
    }
    
    
    
    
}


