//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by ALEKSEY SUSLOV on 12.07.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

struct CalculatorBrain {
    
    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
    
    func getBMIValue() -> String? {
        String(format: "%.1f", bmi)
    }
}
