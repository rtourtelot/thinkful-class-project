//
//  HybridCar.swift
//  Unit2Lesson3
//
//  Created by Rob Tourtelot on 8/13/14.
//  Copyright (c) 2014 Rob Tourtelot. All rights reserved.
//

import Foundation

class HybridCar: Car {
    
    var electricHorsepower: Float = 0.0
    
    override var name : String {
    get{
        super.name = "Hybrid"
        return super.name + "Tech"
    }
    
    set
    {
        //Nothing here for now.
    }
    }
    
 init (nameOfcar: String, colorOfCar: String, horsepowerOfCar: Int, automaticOptionOfCar: Bool){
        
        color = colorOfCar
        automaticOption = (automaticOptionOfCar ? "Automatic" : "Manual")
        
        electricHorsepower = 0.9 * Float(horsepowerOfCar)
        
        println("My \(name) is \(color) and has \(electricHorsepower) Electric horsepower (bhp) and is \(automaticOption)")
    }
}