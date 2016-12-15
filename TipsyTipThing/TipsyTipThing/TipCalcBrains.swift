//
//  TipCalcBrains.swift
//  TipsyTipThing
//
//  Created by DAVID DAILEY on 12/13/16.
//  Copyright © 2016 davedailey. All rights reserved.
//

import Foundation

class TipCalcBrains {
    //data encapsulation eg. hidden data
    private var _billAmount: Double = 0
    private var _tipPercent: Double = 0
    private var _tipAmount: Double = 0
    private var _totalAmount: Double = 0
    private var _numberOfPeople: Int = 1
    private var _splitCost: Double = 0
    
    //allows user interaction with bill amount
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }
    var numberOfPeople: Int {
        get {
            return _numberOfPeople
        } set {
            _numberOfPeople = newValue
        }
    }
    
    //displays private var so that private var cannot be seen/interacted/broken
    var tipAmount: Double {
        get {
            return _tipAmount
        }
    }
    
    var totalAmount: Double {
        get {
            return _totalAmount
        }
    }
    
    var splitCost: Double {
        get {
            return _splitCost
        }
    }
    
    
   init(billAmount: Double, tipPercent: Double, numberOfPeople: Int) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
        self._numberOfPeople = numberOfPeople
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = tipAmount + billAmount
        
    }
    
    func calculateSplit() {
        _splitCost = totalAmount / Double(numberOfPeople)
    }
}
