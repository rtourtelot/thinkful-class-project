//
//  Contacts.swift
//  Contacts-2
//
//  Created by Rob Tourtelot on 8/25/14.
//  Copyright (c) 2014 Rob Tourtelot. All rights reserved.
//

import UIKit

class Contacts: UITableViewController {
    
    //Declaring elements
    struct contactInfo {
        var name: String
        var phoneNumber: String
    }
    
    var listOfContacts: [contactInfo] = []
    
    //Sample contacts
    var firstContact = contactInfo(name: "John Coffey" , phoneNumber: "(111) 111-1111")
    var secondContact = contactInfo(name: "Cathy Kane" , phoneNumber: "(222) 222-2222")
    
    
    //Passing details to detail VC
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        if segue.identifier == "ToDetail" {
            
            let indexPath = self.tableView.indexPathForSelectedRow()
            let theSelectedRow = listOfContacts[indexPath.row]
            let theDestination = (segue.destinationViewController as ContactDetails)
            
            
            theDestination.contactName = theSelectedRow.name
            theDestination.contactPhone = theSelectedRow.phoneNumber
        }
        
        else if segue.identifier == "ToInput" {
            
            (segue.destinationViewController as ContactInput).delegate=self
            
        }
        
        
        
    }
    
    
    func didUpdateContact(senderClass: AnyObject, aName: String, aPhoneNumber: String) {
        
        var newContact = contactInfo(name: aName, phoneNumber: aPhoneNumber)
        listOfContacts.append(newContact)
        
        self.tableView.reloadData()
    }
    
    
    //Tableview delegates
    
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        
        return listOfContacts.count
    }
    
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("contact", forIndexPath: indexPath) as
            UITableViewCell
        
        cell.textLabel.text = listOfContacts[indexPath.row].name
        cell.detailTextLabel.text = listOfContacts[indexPath.row].phoneNumber
        
        return cell
        
    }
    
    //ViewController lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfContacts.append(firstContact)
        listOfContacts.append(secondContact)
    }
    
    

    }
