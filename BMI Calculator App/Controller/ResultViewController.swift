//
//  ResultViewController.swift
//  BMI Calculator App
//
//  Created by Sadia on 31/7/23.
//

import UIKit

class ResultViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    var totalBMI: Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad() 
        setupBMI()
    }

    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    func setupBMI(){
        let calculatedBMI = calculatorBrain.checkCondition(totalBMI: totalBMI)
        
        adviceLabel.text = calculatedBMI.advice
        view.backgroundColor = calculatedBMI.backgroundColor
        BMILabel.text = String(format: "%.2f", calculatedBMI.value)
    }

}

