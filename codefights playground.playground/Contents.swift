//: Playground - noun: a place where people can play

import UIKit

var numbersArray:[Any] = []
var stringOfNumbers:[String] = []

func CodeFight(n: Int) -> [String]{
    
    for i in 0...n {
        numbersArray.append(i)
    }

    
    for numbers in 0...numbersArray.count-1 {
        if numbers%5 == 0 && numbers%7 == 0 && numbers != 0 {
          numbersArray.insert("CodeFight", at:numbers)
          numbersArray.remove(at:numbers+1)
        } else if numbers%7 == 0 && numbers != 0{
           numbersArray.insert("Fight", at:numbers)
           numbersArray.remove(at:numbers+1)
        } else if numbers%5 == 0 && numbers != 0 {
           numbersArray.insert("Code", at:numbers)
           numbersArray.remove(at:numbers+1)
        }}
     stringOfNumbers = numbersArray.flatMap{String(describing: $0)}
   return stringOfNumbers
}

CodeFight(n: 21)
print(stringOfNumbers)