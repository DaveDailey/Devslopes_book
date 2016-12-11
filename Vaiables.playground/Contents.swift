//: Playground - noun: a place where people can play

import UIKit

func calculateArea(length: Int, width: Int) -> Int {
    let area = length*width
    return area
}

calculateArea(10,width: 20)

calculateArea(5, width: 25)

var bankAccountBalance = 500.00
var selfLacingNikes = 350.00
var stainlessSteelAppleWatch = 599.00

func purchaseItem(currentBalance: Double, itemPrice: Double) -> Double {
    if itemPrice <= currentBalance {
        print("Purchased item for $\(itemPrice)")
        return currentBalance - itemPrice
    }else {
        print("You are broke. Balance still at $\(currentBalance)")
        return currentBalance
    }
}

bankAccountBalance = purchaseItem(bankAccountBalance, itemPrice: selfLacingNikes)
bankAccountBalance = purchaseItem(bankAccountBalance, itemPrice: stainlessSteelAppleWatch)

var isThisTheBestBookEver = true
isThisTheBestBookEver = false
var numberOfMinutes = 525600
var hasMedal = true
if numberOfMinutes == 525600 {
    print("time to pay the rent")
}


class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = " "
    func drive() {
        //accelerate the vehicle
    }
    func brake() {
        //stop the vehicle
    }
}

let delorean = Vehicle()
delorean.model = "DMC-12"
delorean.drive()
let bmw = Vehicle()
bmw.model = "328i"
let ford = Vehicle()
ford.model = "F150"
ford.brake()
var allVehicles = [delorean, bmw, ford]

class Car {
 var wheels = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
        
    }
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease
    }
    func brake(){
        currentSpeed = 0
    }
}

class SportsCar: Car{
    override init() {
        super.init()
        make = "Lotus"
        model = "Elise"
    }
    override func drive(speedIncrease:Double) {
        currentSpeed += speedIncrease*4
    }
}

class Minivan: Car{
    override init() {
        super.init()
        make = "Chevy"
        model = "Astro"
    }
    override func drive(speedIncreased:Double) {
        currentSpeed += speedIncreased/2
    }
}

class Shape {
    var area: Double?
    func calculateArea(valueOne:Double, ValueTwo:Double){
        
    }
}

class Triangle: Shape {
    override func calculateArea(valueOne: Double, ValueTwo: Double) {
    area = (valueOne*ValueTwo)/2
    }
}

class Rectangle:Shape {
    override func calculateArea(valueOne: Double, ValueTwo: Double) {
        area = valueOne*ValueTwo
    }
}
