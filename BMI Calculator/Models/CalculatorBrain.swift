//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by ALEKSEY SUSLOV on 12.07.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / (height * height)
        
        let colors = (underweight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), normal: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), overweight: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        
        if bmiValue < 18.5 {
            // underweight
            bmi = BMI(value: bmiValue,
                      advice: "Eat more pies!",
                      color: colors.underweight)
        } else if bmiValue < 24.9 {
            // normal weight
            bmi = BMI(value: bmiValue,
                      advice: "Fit as a fiddle!",
                      color: colors.normal)
        } else {
            // overweight
            bmi = BMI(value: bmiValue,
                      advice: "Eat less pies!",
                      color: colors.overweight)
        }
    }
    
    func getBMIValue() -> String {
        String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getAdvice() -> String {
        bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        bmi?.color ?? #colorLiteral(red: 0.2, green: 0.4823529412, blue: 0.7725490196, alpha: 1)
    }
}
