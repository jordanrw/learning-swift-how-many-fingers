//
//  ViewController.swift
//  NumberGuesser
//
//  Created by Jordan White on 6/3/16.
//  Copyright © 2016 Tilt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textfield: UITextField!

    @IBOutlet weak var rightOrWrongLabel: UILabel!
    @IBOutlet weak var correctNumLabel: UILabel!
    @IBOutlet weak var wrongNumLabel: UILabel!
    
    var numCorrect:Int = 0
    var numWrong:Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //wipe the labels
        self.rightOrWrongLabel.text = ""
        self.correctNumLabel.text = "\(self.numCorrect)"
        self.wrongNumLabel.text = "\(self.numWrong)"
    }

    @IBAction func guessButton(sender: AnyObject) {
        
        //create the random number
        let random = Int(rand() % 5)
        print("random: \(random)")
        
        //then pull the number from the field + make sure that its an int and mess
        let guessNumber:Int = Int(self.textfield.text!)!
        print("guessedNumber: \(guessNumber)")

        
        if guessNumber == random {      //right guess
            self.rightOrWrongLabel.text = "You are right!"
            
            self.numCorrect += 1
            self.correctNumLabel.text = "\(self.numCorrect)"
        } else {                        //wrong answer
            self.rightOrWrongLabel.text = "You are wrong!"
            
            self.numWrong += 1
            self.wrongNumLabel.text = "\(self.numWrong)"
        }
        
    }
    
    
}



//make the keyboard come up automatically

//the make it be dismissed on the swipe down