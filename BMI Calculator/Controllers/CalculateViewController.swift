//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print((sender.value*100).rounded()/100)
        heightLabel.text = "\((sender.value*100).rounded()/100)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(Int(sender.value.rounded()))
        weightLabel.text = "\(sender.value.rounded())Kgs"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height:heightSlider.value, weight:weightSlider.value)
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

