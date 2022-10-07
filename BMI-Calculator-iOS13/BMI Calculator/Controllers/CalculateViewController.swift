//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var bmiValue = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
    
        print(String(format: "%.2f", sender.value))
        
        heightLabel.text = String(format: "%.2f", sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
     let   weight = String(format: "%.0f", sender.value)
        
        weightLabel.text = "\(weight) kg"
   
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    let   heightValue = heightSlider.value
        let   weightValue = weightSlider.value
        
        let BMI = (weightValue/(heightValue*heightValue))
        print("\(BMI) kgs per meters squared 👊🏾")
        bmiValue = String(format: "%.1" , BMI)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! ResultViewController
          
            destinationVC.bmiValue = bmiValue
        }
    }
}



