//
//  ViewController.swift
//  Craps
//
//  Created by argenis delarosa on 11/25/19.
//  Copyright © 2019 argenis delarosa. All rights reserved.
//


// ALL IMAGE ASSETS WERE PROVIDED BY:
// <div>Icons made by <a href="https://www.flaticon.com/authors/smashicons" title="Smashicons">Smashicons</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
//
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var crapsLabel: UILabel!
    
    let dice = ["1", "2", "3", "4", "5", "6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let leftNumber = Int(arc4random())
        let rightNumber = Int(arc4random())
        diceImageView1.image = UIImage(named: dice[leftNumber])
        diceImageView2.image = UIImage(named: dice[rightNumber])
        
        if leftNumber == 0 && rightNumber == 0 {
            crapsLabel.text = "SNAKE EYES!"
        }
        else if leftNumber == 4 && rightNumber == 4 {
            crapsLabel.text = "Hardaway Pays 7 to 1"
        }
        else if leftNumber == 2 && rightNumber == 2 {
            crapsLabel.text = "Hardaway Pays 9 to 1"
        }
        else if leftNumber == 1 && rightNumber == 1 {
            crapsLabel.text = "Hardaway Pays 7 to 1"
        }
        else if leftNumber == 0 && rightNumber == 1 {
            crapsLabel.text = "Craps! You lost!"
        }
        else if leftNumber == 4 && rightNumber == 4 {
            crapsLabel.text = "SNAKE EYES!"
        }
        else if leftNumber == 4 && rightNumber == 4 {
            crapsLabel.text = "SNAKE EYES!"
        }
        
    }
    
}

