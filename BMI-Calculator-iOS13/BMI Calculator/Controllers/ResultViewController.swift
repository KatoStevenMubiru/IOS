//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Kato Steven Mubiru on 28/09/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        bmiLabel.text = bmiValue

           // Do any additional setup after loading the view.
    }
    

   
    @IBAction func recalculatedPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
