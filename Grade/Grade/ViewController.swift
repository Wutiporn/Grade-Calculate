//
//  ViewController.swift
//  Grade
//
//  Created by Wutiporn Fungkajorn on 14/8/2562 BE.
//  Copyright © 2562 Wutiporn Fungkajorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculateGrade: UILabel!
    @IBOutlet weak var displayGrade: UILabel!
    @IBOutlet weak var sliderLabel: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let grade = String(format: "%.0f",sender.value)
        displayGrade.text = "\(grade)"
        print(grade)
        print(sender.value)
    }
    @IBAction func calculate(_ sender: Any) {
        var score = 0
        if let scoreInput =
            displayGrade.text{
            print(displayGrade.text)
            score = (displayGrade.text as! NSString).integerValue
            print(score)
            
            if(score<=49)
            {
                print("0")
                displayGrade.text = "F"
                view.backgroundColor = #colorLiteral(red: 0.8403733373, green: 0.08365989476, blue: 0.05761734396, alpha: 1)
            }
            else if((score>=50)&&(score<=54))
            {
                print("1")
                displayGrade.text = "D"
                view.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            }
            else if((score>=55)&&(score<=59))
            {
                print("1.5")
                displayGrade.text = "D+"
                view.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
            }
            else if((score>=60)&&(score<=64))
            {
                print("2")
                displayGrade.text = "C"
                view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            }
            else if((score>=65)&&(score<=69))
            {
                print("2.5")
                displayGrade.text = "C+"
                view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            }
            else if((score>=70)&&(score<=74))
            {
                print("3")
                displayGrade.text = "B"
                view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            }
            else if((score>=75)&&(score<=79))
            {
                print("3.5")
                displayGrade.text = "B+"
                view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            }
            else if(score>=80)
            {
                print("4")
                displayGrade.text = "A"
                view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            }
        }
    }
}

