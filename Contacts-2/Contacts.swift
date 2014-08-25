//
//  Contacts.swift
//  Contacts-2
//
//  Created by Rob Tourtelot on 8/25/14.
//  Copyright (c) 2014 Rob Tourtelot. All rights reserved.
//

import UIKit

class Contacts: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("contact", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel.text = "test"
        return cell
        
    }

    }
