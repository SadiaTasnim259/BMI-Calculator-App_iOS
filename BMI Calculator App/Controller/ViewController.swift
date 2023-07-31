//
//  ViewController.swift
//  BMI Calculator App
//
//  Created by Sadia on 30/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var heightSliderValue = ""
    var weightSliderValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
         heightSliderValue = String(format: "%.2f", heightSlider.value)
        
        heightLabel.text = ("\(heightSliderValue)m")
        
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightSliderValue = String(format: "%.1f", weightSlider.value)
        
        weightLabel.text = ("\(weightSliderValue)kg")
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        let calculatedBMI = (Float(weightSliderValue) ?? 0.0) / ((Float(heightSliderValue) ?? 0.0) * (Float(heightSliderValue) ?? 0.0))
        
        let resultViewController = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
                resultViewController.totalBMI = calculatedBMI
                
                self.navigationController?.pushViewController(resultViewController, animated: true)
        
    }
}

