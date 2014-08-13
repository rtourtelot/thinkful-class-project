//
//  Car.swift
//  Unit2Lesson3
//
//  Created by Rob Tourtelot on 8/13/14.
//  Copyright (c) 2014 Rob Tourtelot. All rights reserved.
//

import Foundation

class Car {
    var name = ""
    var color = ""
    var horsepower = 0
    var automaticOption = ""


func setupCarDetailsWithName (nameOfCar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool) {
    
    self.name = nameOfCar
    self.color = colorOfCar
    self.horsepower = horsepowerOfCar
    self.automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
    println ("My \(name) is \(color) and has \(horsepower) horsepower and is \(automaticOption)")
}
}