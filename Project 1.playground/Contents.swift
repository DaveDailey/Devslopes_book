//: Playground - noun: a place where people can play

import UIKit

var please = "please"
var sixtyNine = 69
var marathon = 26.2
var noIdeas:Float = 54.3
var valid = true

func volumeOfACube (sideLength:Double) -> Double {
    return sideLength*sideLength*sideLength
}

volumeOfACube(4)

var myFavoritePokemon = ["pikicu", "snorlax", "sparrow", "charmander"]

for pokes in myFavoritePokemon {
    print("\(pokes), i choose you!")
}

var kitchenUtinsels = ["whisk":"for whisking", "spatula":"for scraping", "fork":"for stabbing", "spoon":"spoons are gay"]

var downLoadFinished = true
if downLoadFinished == true {
    print("done bitches")

}else {
    print("not yet")
}

class Shoe {
    var hasLaces = true
    var color:String = ""
    var releaseDate:Int = 0
    init(){}
}

class FlipFlop:Shoe {
    override init(){
        super.init()
    color = "brown"
    releaseDate = 030412
    }
    
}

class Slipper:Shoe{
    override init() {
        super.init()
        color = "blue"
        releaseDate = 456712
        hasLaces = false
    }
    
}

let mySlipper = Slipper()
let mySandal = FlipFlop()

var stuff = [mySlipper, mySandal]



//create subclasses of shoes for three diff models with data for each
