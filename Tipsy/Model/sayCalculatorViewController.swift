//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
   
    var tip : Double = 0.10
    var person : String = ""
    var total = "0"
    var buttonTitle : String = ""
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
    
               zeroPctButton.isSelected = false
               tenPctButton.isSelected = false
               twentyPctButton.isSelected = false
            
        sender.isSelected = true
        buttonTitle = sender.currentTitle!
        let pureNumber = String(buttonTitle.dropLast())
        
        tip = Double(pureNumber)! / 100
        
         billTextField.endEditing(true)
        
       

    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        person = String(format: "%0.f", sender.value)
        splitNumberLabel.text = person
    
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        
        let cash = Double(billTextField.text!)
        total = String(format: "%.2f", (cash! + (cash! * tip)) / Double(person)!)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.getTotal = total
        destinationVC.getTip = buttonTitle
        destinationVC.getPerson = person
        
    }
    
    
}

