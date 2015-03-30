//
//  ViewController.swift
//  calculette
//
//  Created by Smurfy on 30/03/2015.
//  Copyright (c) 2015 Smurfy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var lastNumber : String = ""
    var Operator : String = ""
    @IBOutlet var answer : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonTapped(button : UIButton){
        if answer.text == "0" {
            answer.text = button.titleLabel!.text!
        } else {
            if answer.text! == lastNumber {
                answer.text = button.titleLabel!.text!
            } else{
                answer.text = answer.text! + button.titleLabel!.text!
            }
            
        }
    }
    
    @IBAction func plusTapped(button : UIButton){
            lastNumber = answer.text!
            Operator = "+"
    }
    
    @IBAction func minusTapped(button : UIButton){
        lastNumber = answer.text!
        Operator = "-"
    }
    
    @IBAction func multiplyTapped(button : UIButton){
        lastNumber = answer.text!
        Operator = "*"
    }
    
    @IBAction func clearTapped(button : UIButton){
        answer.text = "0"
        lastNumber = "0"
        Operator = ""
    }
    
    @IBAction func enterTapped(AnyObject){
        var num1 = lastNumber.toInt()!
        var num2 = answer.text!.toInt()!
        var result : Int = 0
        if Operator == "+" {
            result = num1 + num2
        }else if Operator == "-"{
            result = num1 - num2
        }else if Operator == "*"{
            result = num1 * num2
        }
        answer.text = String(result)
    }
}

