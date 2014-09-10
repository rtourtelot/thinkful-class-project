//
//  ContactInput.swift
//  Contacts-2
//
//  Created by Rob Tourtelot on 9/4/14.
//  Copyright (c) 2014 Rob Tourtelot. All rights reserved.
//

import UIKit

class ContactInput: UIViewController, UITextFieldDelegate {
    
    
    
    //Properties
    
    var name = ""
    var phoneNumber = ""
    
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var phoneField: UITextField!
    
    // Textfield delegates
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        if textField.tag == 1 {
            self.name = textField.text
        }
        else {
            self.phoneNumber = textField.text
        }
        
        println("Name: \(self.name), Phone: \(self.phoneNumber)")
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    
    
    
    
    //Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameField.delegate = self
        self.phoneField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
