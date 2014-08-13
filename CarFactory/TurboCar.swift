//
//  TurboCar.swift
//  Car Factory
//
//  Created by Rob Tourtelot on 8/12/14.
//  Copyright (c) 2014 Rob Tourtelot. All rights reserved.
//

import Foundation

class TurboCar: Car {

var turboRating = "" // can be A to F

var stabilizingSpoiler = ""

func turboCarSpecs (aTurboRating: String, aSpoiler: Bool) -> String{
    self.turboRating = aTurboRating;
    self.stabilizingSpoiler = (aSpoiler ? "a" : "no")
    
    return ("In addition, this turbo car has a turbo rating of \(self.turboRating) and \(self.stabilizingSpoiler)spoiler")
}
}