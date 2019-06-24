//
//  Rider.swift
//  cityTransitSystemSwift
//
//  Created by Neeraj Prasher on 2019-06-18.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation

class Rider: Users
{
    var firstName: String?
    var lastName: String?
    var email: String?
    var contact: String?
    var card: Dictionary<String, Double>?
    
    private static var riderDict=[String:Rider]()
    
    override init() {
        self.firstName = String()
        self.lastName = String()
        self.email = String()
        self.contact = String()
        self.card = Dictionary<String, Double>()
        super.init()
    }
    
    var fullName: String // computed variable
    {
        return "\(String(describing: self.firstName)) \(String(describing: self.lastName))"
    }
    
    func getRiderDetails()
    {
        var tempFirstName: String
        var tempLastName: String
        var tempEmail: String
        var tempContact: String
        print("******* Please Enter Your Details *******")
        print("Rider First Name :")
        
        tempFirstName = readLine() ?? "No First Name Given"
        
        if tempFirstName.isValidName()
        {
            self.firstName = tempFirstName
        }else
        {
            print("Invalid First Name")
        }
        
        print("Rider Last Name :")
        
        tempLastName = readLine() ?? "No Last Name Given"
        
        if tempLastName.isValidName()
        {
            self.lastName = tempLastName
        }else
        {
            print("Invalid Last Name")
        }
        
        //        print("Rider Birth :")
        //        self.birth = readLine()
        
        print("Rider Email :")
        
        tempEmail = readLine() ?? "No Email Given"
        
        if tempEmail.isValidEmail()
        {
            self.email = tempEmail
        }else
        {
            print("Invalid Email")
        }
        
        print("Rider Contact :")
        
        tempContact = readLine() ?? "No Contact Given"
        
        if tempContact.isValidContact()
        {
            self.contact = tempContact
        }else
        {
            print("Invalid Contact")
        }
        
        card?.updateValue(0.0, forKey: "1")
    }
    
    override func Display()
    {
        print("---------Rider Details---------")
        super.Display()
        print("\nRider Name :" , self.fullName
            , "\nRider Email :" , self.email ?? "No email given"
            , "\nRider Contact Number :" , self.contact ?? "No contact number given"
            , "\n\n---------Rider's Card Details---------"
            , "\n\nCard Number :", self.card?.keys ?? "Card number not available"
            , "\nCard balance :", "$", self.card?.values ?? "Card balance not available")
    }
}
