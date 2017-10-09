//
//  ViewController.swift
//  math game
//
//  Created by Kevin Briggs on 10/9/17.
//  Copyright © 2017 Kevin Briggs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //declare variables
    var number1 = 0
    var number2 = 0
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //when the button is pressed it sets the random numbers and picks an operator
    @IBAction func checkAnswer(_ sender: Any) {
        number1 = Int(arc4random_uniform(UInt32(100)))
        number2 = Int(arc4random_uniform(UInt32(100)))
        let op = Int(arc4random_uniform(UInt32(2)))
        checkAnswer(op: op)
    }
    
    //this prints the equation and the correct answer
    func checkAnswer(op: Int){
        if (op == 0) {
            correctAnswer =  number1 + number2
            print("\(number1) + \(number2)")
            print(correctAnswer)
        }
            
        else if (op == 1) {
            correctAnswer = number1 - number2
            print("\(number1) - \(number2)")
            print(correctAnswer)
        }
            
        else if (op == 2) {
            correctAnswer = number1 * number2
            print("\(number1) * \(number2)")
            print(correctAnswer)
        }
        
    }

}

