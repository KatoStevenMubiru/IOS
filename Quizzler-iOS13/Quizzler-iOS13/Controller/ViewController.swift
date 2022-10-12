//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    
    @IBOutlet weak var falseButton: UIButton!
    
 var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // This signfies what the user has picked. "True or Flase"
        
        quizBrain.checkAnswer(userAnswer)
        
        if userAnswer == actualAnswer {
            
            sender.backgroundColor = UIColor.green
            print(" You are right ")
            
        } else{
            
            sender.backgroundColor = UIColor.red
            print(" You are wrong ")
        }
        
        if qNumber + 1 < quiz.count{
            qNumber += 1
            
        } else{
            qNumber = 0
            
            
        }
        updateUI()
        func updateUI() {
            
            questionLabel.text = quiz[qNumber].text
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
        }
        
    }
}

