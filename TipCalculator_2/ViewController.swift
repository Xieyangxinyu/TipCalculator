//
//  ViewController.swift
//  TipCalculator_2
//
//  Created by 谢阳欣雨 on 1/10/19.
//  Copyright © 2019 Yangxinyu Xie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var SplitField: UITextField!
    @IBOutlet weak var SplitLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let splitDefault = 1
        SplitField.placeholder = String(format: "%d", splitDefault)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentage = [0.15, 0.20, 0.25]
        
        let bill = Double(BillField.text!) ?? 0
        let split = Int(SplitField.text!) ?? 1
        let tip = bill * tipPercentage[TipControl.selectedSegmentIndex]
        
        let total = bill + tip
        let splitRes = total / Double(split)
        
        TipLabel.text = String(format: "%.2f", tip)
        TotalLabel.text = String(format: "%.2f",total)
        SplitLabel.text = String(format: "%.2f", splitRes)
    }
}

