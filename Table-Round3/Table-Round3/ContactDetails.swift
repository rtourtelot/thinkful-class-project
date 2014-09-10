//
//  ContactDetails.swift
//  Table-Round3
//
//  Created by Rob Tourtelot on 9/10/14.
//  Copyright (c) 2014 Rob Tourtelot. All rights reserved.
//

import UIKit

class ContactDetails: UIViewController {
    
    @IBOutlet var contactNameLabel: UILabel!
    
    @IBOutlet var contactPhoneLabel: UILabel!
    
    var contactName = ""
    var contactPhone = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactNameLabel.text = contactName
        contactPhoneLabel.text = contactPhone
        
    }

}
