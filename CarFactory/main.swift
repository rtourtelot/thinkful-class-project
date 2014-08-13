//
//  main.swift
//  Car Factory
//
//  Created by Rob Tourtelot on 8/11/14.
//  Copyright (c) 2014 Rob Tourtelot. All rights reserved.
//

import Foundation

var myFirstCar = Car()

myFirstCar.name = "Mustang"
myFirstCar.color = "Red"
myFirstCar.horsepower = 200
myFirstCar.automaticOption = true

println("My \(myFirstCar.name) is \(myFirstCar.color) and is \(myFirstCar.horsepower) horsepower.")

var mySecondCar = Car()

mySecondCar.name = "BMW"
mySecondCar.color = "Blue"
mySecondCar.horsepower = 300
mySecondCar.automaticOption = true

println("My \(mySecondCar.name) is \(mySecondCar.color) and is \(mySecondCar.horsepower) horsepower.")

