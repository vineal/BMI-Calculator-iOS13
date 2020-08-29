//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Vineal Viji Varghese on 20/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    var bmiValue:String? = ""
    var advice:String? = ""
    var color:UIColor? = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        backgroundImage.backgroundColor = color
        
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
