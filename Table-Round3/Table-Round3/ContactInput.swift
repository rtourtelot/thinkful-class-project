//
//  ContactInput.swift
//  Table-Round3
//
//  Created by Rob Tourtelot on 9/10/14.
//  Copyright (c) 2014 Rob Tourtelot. All rights reserved.
//

import UIKit


protocol dataUpdated:NSObjectProtocol {
    
    func didUpdateContact(senderClass: AnyObject, aName: String, aPhoneNumber: String)
}

class ContactInput: UIViewController, UITextFieldDelegate {
    
    // Properties
    
    var name = ""
    var phoneNumber = ""
    var delegate: dataUpdated?
    
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var phoneField: UITextField!
    
    
    //Textfield delegates
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
    
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if name != "" && phoneNumber != "" {
            self.delegate!.didUpdateContact(self, aName: self.name, aPhoneNumber: self.phoneNumber)
        }
    }
    
    
}

