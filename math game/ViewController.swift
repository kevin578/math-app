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
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var outcome: UILabel!
    @IBOutlet weak var nextQuestion: UIButton!
    @IBOutlet weak var checkAnswer: UIButton!
    
    @IBAction func nextQuestion(_ sender: Any) {
        label.isHidden = false
        checkAnswer.isHidden = false
        outcome.isHidden = true
        nextQuestion.isHidden = true
        generateEquation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outcome.isHidden = true
        nextQuestion.isHidden = true
        checkAnswer.isHidden = false
        label.isHidden = false
        generateEquation()
    }

    //when the button is pressed it sets the random numbers and picks an operator
    @IBAction func checkAnswer(_ sender: Any) {
        label.isHidden = true
        checkAnswer.isHidden = true
        outcome.isHidden = false
        nextQuestion.isHidden = false
        textInput.text = ""
        if (correctAnswer == Int(textInput.text!)) {
            outcome.text = "Correct!"
        }
        else {
            outcome.text = "Wrong"
        }
    }
    
    
    
    //this prints the equation and the correct answer
    func generateEquation(){
    
        number1 = Int(arc4random_uniform(UInt32(100)))
        number2 = Int(arc4random_uniform(UInt32(100)))
        let op = Int(arc4random_uniform(UInt32(3)))
        
        if (op == 0) {
            correctAnswer =  number1 + number2
            label.text = "\(number1) + \(number2)"
        }
            
        else if (op == 1) {
            correctAnswer = number1 - number2
            label.text = "\(number1) - \(number2)"
        }
            
        else if (op == 2) {
            correctAnswer = number1 * number2
            label.text = "\(number1) * \(number2)"
        }
        
    }

}

