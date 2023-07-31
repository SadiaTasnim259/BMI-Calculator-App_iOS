//
//  ResultViewController.swift
//  BMI Calculator App
//
//  Created by Sadia on 31/7/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var totalBMI:Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        BMILabel.text = String(format: "%.2f", totalBMI)
        checkCondition(totalBMI: totalBMI)
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    func checkCondition(totalBMI:Float){
        if totalBMI < 18.5 {
            adviceLabel.text = "Please eat more"
            view.backgroundColor = UIColor(named: "halfBlue")
        } else if totalBMI <= 24.9{
            adviceLabel.text = "Congratulations! You are as fit as a model"
            view.backgroundColor = UIColor(named: "halfGreen")
        }else if totalBMI > 25.0{
            adviceLabel.text = "Please stop overeating, Start exercise"
            view.backgroundColor = UIColor(named: "halfRed")
        }
    }
    
    
}
