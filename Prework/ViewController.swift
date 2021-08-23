//
//  ViewController.swift
//  Prework
//
//  Created by Abdullah Saleh on 8/21/21.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var partySizeStepper: UIStepper!
    @IBOutlet weak var partySizeAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var perPersonAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()
    }

    
    @IBAction func incrementPartySize(_ sender: UIStepper) {
        partySizeAmountLabel.text = String(sender.value)
    }
   
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *  tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let partySize = Double(partySizeStepper.value)
        let perPersonCost = total/partySize
     
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        perPersonAmountLabel.text = String(format: "$%.2f", perPersonCost)
        
    }

}

