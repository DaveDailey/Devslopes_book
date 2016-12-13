//
//  ViewController.swift
//  TipsyTipThing
//
//  Created by DAVID DAILEY on 12/13/16.
//  Copyright © 2016 davedailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterBillTF: UITextField!
    @IBOutlet weak var tipPercentageLbl: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    @IBOutlet weak var numberOfPeopleLbl: UILabel!
    @IBOutlet weak var splitCostLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var tipCalcBrains = TipCalcBrains(billAmount: 25.00, tipPercent: 0.15, numberOfPeople: 1)
    
    @IBAction func billAmountChange(_ sender: Any) {
        calculateTip()
        
    }
    
    @IBAction func tipPercentChange(_ sender: Any) {
        tipPercentValue()
        calculateTip()
    }
    
    @IBAction func numberOfPeopleSlider(_ sender: Any) {
        updateSplitUI()
        
    }

    
    func calculateTip() {
        tipCalcBrains.tipPercent = Double(floor(tipPercentageSlider.value*100)/100)
        tipCalcBrains.billAmount = ((enterBillTF.text)! as NSString).doubleValue
        tipCalcBrains.calculateTip()
        updateBillUI()
        updateSplitUI()
    }
    
    func updateBillUI() {
        totalAmount.text = String(format: "$%0.2f", tipCalcBrains.totalAmount)
        tipAmountLbl.text = String(format: "$%0.2f", tipCalcBrains.tipAmount)
    }
    
    func tipPercentValue() {
        tipPercentageLbl.text = "Tip: \(Int(tipPercentageSlider.value*100))%"
    }
    
    func updateSplitUI() {
        tipCalcBrains.numberOfPeople = Int(numberOfPeopleSlider.value)
        numberOfPeopleLbl.text = "People: \(Int(numberOfPeopleSlider.value))"
        splitCostLbl.text = String(format: "$%0.2f", tipCalcBrains.splitCost)
        tipCalcBrains.calculateSplit()
    }
    
}

