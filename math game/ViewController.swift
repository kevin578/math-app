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
    override func viewDidLoad() {
        super.viewDidLoad()
        generateEquation()
    }

    //when the button is pressed it sets the random numbers and picks an operator
    @IBAction func checkAnswer(_ sender: Any) {
        generateEquation()
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

