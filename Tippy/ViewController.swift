//
//  ViewController.swift
//  Tippy
//
//  Created by Cagan Sevencan on 12/25/18.
//  Copyright © 2018 Cagan Sevencan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onTap(_ sender: AnyObject) {
       view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentages = [0.18,0.20,0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill*tipPercentages[tipControl.selecte]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

