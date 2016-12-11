//: Playground - noun: a place where people can play

import UIKit

var index = 0
var raises: [Double] = []
var salaries = [45000.0, 1000000.0, 54000.0, 20000.0]
for item in salaries {
   salaries[index] = salaries[index]*1.1
    index+=1
}

print(salaries)

index = 0

repeat {
    salaries[index] = salaries[index]*1.1
    index+=1
}while (index < salaries.count)

print("\(salaries)")

