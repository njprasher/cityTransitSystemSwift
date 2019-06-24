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
    
    //Rider Dictionary
    private static var riderDict=[String:Rider]()
    
    override init() {
        self.firstName = String()
        self.lastName = String()
        self.email = String()
        self.contact = String()
        self.card = Dictionary<String, Double>()
        super.init()
    }
    
    var fullName: String? // computed variable
    {
        return "\(String(describing: self.firstName!)) \(String(describing: self.lastName!))"
    }
    
    func enterFirstName()
    {
        let tempFirstName = readLine()!
        var returnVariable = ""
        if tempFirstName.isEmpty == false {
            let isValidFirstName = tempFirstName.isValidName()
            if isValidFirstName == false{
                returnVariable = tempFirstName
            }else{
                print("You entered Invalid First Name \(String(describing: tempFirstName))")
                print("Please Enter First Name Again")
                enterFirstName()
            }
        }else{
            print("You haven't entered the First Name, please enter")
            enterFirstName()
        }
        self.firstName = returnVariable
    }
    
    func getRiderDetails()
    {
      //  var tempFirstName: String
        var tempLastName: String
        var tempEmail: String
        var tempContact: String
        print("******* Please Enter Your Details *******")
        
        self.enterFirstName()
//        print("Rider First Name :")
//
//        tempFirstName = readLine() ?? "No First Name Given"
//
//        if (tempFirstName.isValidName() == false)
//        {
//            self.firstName = tempFirstName
//        }else
//        {
//            print("Invalid First Name")
//        }
        
        print("Rider Last Name :")
        
        tempLastName = readLine() ?? "No Last Name Given"
        
        if (tempLastName.isValidName() == false)
        {
            self.lastName = tempLastName
        }else
        {
            print("Invalid Last Name")
        }

        print("Rider Email :")
        
        tempEmail = readLine() ?? "No Email Given"
        
        if (tempEmail.isValidEmail() == false)
        {
            self.email = tempEmail
        }else
        {
            print("Invalid Email")
        }
        
        print("Rider Contact :")
        
        tempContact = readLine() ?? "No Contact Given"
        
        if (tempContact.isValidContact() == false)
        {
            self.contact = tempContact
        }else
        {
            print("Invalid Contact")
        }
        
        card?.updateValue(0.0, forKey: "1")
    }
    
    static func signUp(rider: Rider)
    {
        print("---------Signing in New Rider---------")
        
        riderDict.updateValue(rider, forKey: rider.id ?? "Rider Not Created")
    }
    
    static func displayRiders()
    {
        for rider in riderDict{
            rider.value.Display()
        }
    }
    
    func updateRiderDetails()
    {
        
    }
    
    func addFunds()
    {
        print("******* How Much money You would like to add *******")
        let tempMoney = Double(readLine()!)
        //tempMoney = self.card!["1"]! + tempMoney!
        self.card!["1"] = tempMoney
    }
    
    override func Display()
    {
        print("---------Rider Details---------")
        super.Display()
        print("\nRider Name :" , self.fullName ?? "No Full Name Given"
            , "\nRider Email :" , self.email ?? "No email given"
            , "\nRider Contact Number :" , self.contact ?? "No contact number given"
            , "\n\n---------Rider's Card Details---------"
            , "\n\nCard Number :", self.card?.keys ?? "Card number not available"
            , "\nCard balance :", "$", self.card?.values ?? "Card balance not available")
    }
}
