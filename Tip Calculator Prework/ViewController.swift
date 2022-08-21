//
//  ViewController.swift
//  Tip Calculator Prework
//
//  Created by Yahia Beethoven on 19/8/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var tipSliderControl: UISlider!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateSliderTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        // defined possible tip ratios
        let tipPercentage = Double(tipSliderControl.value / 100)
        // choose tip based on selected segment
        let tip = bill * tipPercentage
        // set total to be the sum of tip and bill
        let total = bill + tip
        //Update tip amount and total amount labels
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        tipPercentageLabel.text = String(format: "%.0f%%",tipSliderControl.value)
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill ampunt from input
        let bill = Double(billAmountTextField.text!) ?? 0
        // defined possible tip ratios
        let tipPercentages = [0.15, 0.18, 0.2]
        // choose tip based on selected segment
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        // set total to be the sum of tip and bill
        let total = bill + tip
        //Update tip amount and total amount labels
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        tipSliderControl.value = Float(tipPercentages[tipControl.selectedSegmentIndex] * 100)
        tipPercentageLabel.text = String(format: "%.0f%%",tipSliderControl.value)
    }
    
    
}

