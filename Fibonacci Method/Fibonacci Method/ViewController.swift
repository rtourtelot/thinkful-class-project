//
//  ViewController.swift
//  Fibonacci Method
//
//  Created by Rob Tourtelot on 8/20/14.
//  Copyright (c) 2014 Rob Tourtelot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var theSlider: UISlider
    @IBOutlet var selectedValueLabel: UILabel
    @IBOutlet var outputTextView: UITextView
    
    
    //An instance of the model
    var fibo: FibonacciModel = FibonacciModel()
    
    
    
    
    @IBAction func sliderValueDidChange(sender: UISlider) {
        
        var returnedArray: [Int] = []
        var formattedOutput:String = ""
        
        //Display the updated slider value
        self.selectedValueLabel.text = String(Int(theSlider.value))
        
        //Calculate the Fibonacci elements based on the new slider value
        returnedArray = self.fibo.calculateFibonacciNumbers(minimum2: Int(theSlider.value))
        
        //Put the elements in a nicely formatted array
        for number in returnedArray {
            
            formattedOutput = formattedOutput + String(number) + ", "
        }
        
        //Update the textfield with the formatted array
        self.outputTextView.text = formattedOutput
    }
    
}
    
 