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
        
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
