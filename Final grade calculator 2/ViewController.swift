    //
    //  ViewController.swift
    //  Final grade calculator 2
    //
    //  Created by zamin ahmed on 10/7/18.
    //  Copyright © 2018 zamin ahmed. All rights reserved.
    //
    import UIKit
    
    class ViewController: UIViewController {
        
        @IBOutlet weak var number1: UITextField!
        @IBOutlet weak var number2: UITextField!
        @IBOutlet weak var weight: UITextField!
        @IBOutlet weak var neededgrade: UITextField!
        @IBOutlet weak var segbutton: UISegmentedControl!
        
        override func viewDidLoad() {
            number1.keyboardType = UIKeyboardType.numberPad
            number2.keyboardType = UIKeyboardType.numberPad
            super.viewDidLoad()
        }
        
        @IBAction func SButton(_ sender: UISegmentedControl) {
            
            var desiredGrade = 0
            switch segbutton.selectedSegmentIndex
            {
            case 0:
                desiredGrade = 90
            case 1:
                desiredGrade = 80
            case 2:
                desiredGrade = 70
            case 3:
                desiredGrade = 60
            default:
                break
            }
            let originalGrade = Int(number1.text!)!
            let finalWeight = Int(weight.text!)!
            if finalWeight != 0 {
                let finalCalculator = (100 * desiredGrade - (100 - finalWeight) * originalGrade) / finalWeight
                neededgrade.text = String(finalCalculator)
                
                if finalCalculator > 100 {
                    view.backgroundColor = UIColor.red
                }
                else
                {
                    view.backgroundColor = UIColor.green
                }
            }
        }
    }
