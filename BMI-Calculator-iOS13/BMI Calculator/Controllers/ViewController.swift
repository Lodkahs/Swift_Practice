//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        //if height < 1 {
            //heightLabel.text = ("\(height * 100])sm")
        //} else {
            heightLabel.text = "\(height)m"
        //}
        
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    
    @IBAction func calculatePress(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        var BMI = (weight)/pow(height, 2)
        
                                
        print(height, weight, BMI)
    }
}
