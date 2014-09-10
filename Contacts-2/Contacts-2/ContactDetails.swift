//
//  ContactDetails.swift
//  Contacts-2
//
//  Created by Rob Tourtelot on 8/25/14.
//  Copyright (c) 2014 Rob Tourtelot. All rights reserved.
//

import UIKit

class ContactDetails: UIViewController {
    
    
    var contactName=""
    var contactPhone=""
    
    
   
    @IBOutlet var nameField: UITextField!
    @IBOutlet var phoneField: UITextField!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactNameLabel.text = contactName
        contactPhoneLabel.text = contactPhone
        
    }

}


