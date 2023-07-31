//
//  CalculatorBrain.swift
//  BMI Calculator App
//
//  Created by Sadia on 31/7/23.
//

import Foundation
import UIKit

struct CalculatorBrain{
    
    func checkCondition(totalBMI:Float)-> BMI{
        if totalBMI < 18.5 {
            return BMI(advice: "Please eat more", value: totalBMI, backgroundColor: UIColor(named: "halfBlue") ?? UIColor.white )
        } else if totalBMI <= 24.9{
            return BMI(advice: "Congratulations! You are as fit as a model", value: totalBMI, backgroundColor: UIColor(named: "halfGreen") ?? UIColor.white)
        }else {
            return BMI(advice: "Please stop overeating, Start exercise", value: totalBMI, backgroundColor: UIColor(named: "halfRed") ?? UIColor.white)
        }
    }
}
