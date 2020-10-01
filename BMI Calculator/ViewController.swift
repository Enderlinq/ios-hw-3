//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Wahj Al-duwaisan on 9/24/20.
//  Copyright © 2020 Wahj Al-Duwaisan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var StatusPlacement: UILabel!
    @IBOutlet weak var ImageBonus: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Calculate(_ sender: Any) {
        
        let weight = weightField.text!
        let height = heightField.text!
        
        let Weight = (weight as NSString).doubleValue
        let Height = (height as NSString).doubleValue
        
        let bmi = Weight / (Height * 2)
        
        if (bmi > 40.1)
        {
            // obese class III
            StatusPlacement.text = ("بطيخة")
            ImageBonus.image = UIImage(named: "melon 2")
        }
        else if (bmi >= 35.1 && bmi <= 40)
        {
            // obese class II
            StatusPlacement.text = ("رقي")
            ImageBonus.image = UIImage(named: "melon")
        }
        else if (bmi >= 30.1 && bmi <= 35)
        {
            // obese class I
            StatusPlacement.text = ("بطة")
            ImageBonus.image = UIImage(named: "duck")
        }
        else if (bmi >= 25.1 && bmi <= 30)
        {
            // overweight
            StatusPlacement.text = ("Too fat and too furious")
            ImageBonus.image = UIImage(named: "FandF")
        }
        else if (bmi >= 18.5 && bmi < 25)
        {
            // normal
            StatusPlacement.text = ("جيد")
            ImageBonus.image = UIImage(named: "image0")
        }
        else if (bmi >= 17.1 && bmi <= 18.4)
        {
            // Mild thinness
            StatusPlacement.text = ("قلم")
            ImageBonus.image = UIImage(named: "pencil")
        }
        else if (bmi >= 16 && bmi <= 17)
        {
            // Moderate thinness
            StatusPlacement.text = ("عود")
            ImageBonus.image = UIImage(named: "stick")
        }
        else if (bmi < 16)
        {
            // Severe thinness
            StatusPlacement.text = ("نودل")
            ImageBonus.image = UIImage(named: "noodle")
        }
        else
        {
            StatusPlacement.text = ("Your BMI doesn't make sense.")
        }
        
    }
    
    
}
