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
    var cardBalance: Double?
    
    //Rider Dictionary
    private static var riderDict=[String:Rider]()
    
    override init() {
        self.firstName = String()
        self.lastName = String()
        self.email = String()
        self.contact = String()
        self.cardBalance = Double()
        super.init()
    }
    
    init(id: String, password: String, firstName: String, lastName: String, email: String, contact: String, cardBalance: Double)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.contact = contact
        self.cardBalance = cardBalance
        super.init(id: id, password: password)
        
        Rider.signUp(rider: self)
    }
    
    var fullName: String? // computed variable
    {
        return "\(String(describing: self.firstName!)) \(String(describing: self.lastName!))"
    }
    
    func enterFirstName()
    {
        print("Rider First Name :")
        let tempFirstName = readLine()!
        var returnVariable = ""
        if tempFirstName.isEmpty == false {
            let isValidFirstName = tempFirstName.isValidName()
            if isValidFirstName == true{
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
    
    func enterLastName()
    {
        print("Rider Last Name :")
        let temp = readLine()!
        var returnVariable = ""
        if temp.isEmpty == false {
            let isValid = temp.isValidName()
            if isValid == true{
                returnVariable = temp
            }else{
                print("You entered Invalid Last Name \(String(describing: temp))")
                print("Please Enter Last Name Again")
                enterLastName()
            }
        }else{
            print("You haven't entered the First Name, please enter")
            enterFirstName()
        }
        self.lastName = returnVariable
    }
    
    func enterEmail()
    {
        print("Rider Email :")
        let temp = readLine()!
        var returnVariable = ""
        if temp.isEmpty == false {
            let isValid = temp.isValidEmail()
            if isValid == true{
                returnVariable = temp
            }else{
                print("You entered Invalid Email \(String(describing: temp))")
                print("Please Enter Email Again")
                enterEmail()
            }
        }else{
            print("You haven't entered the email, please enter")
            enterEmail()
        }
        self.email = returnVariable
        
    }
    
    func enterPassword()
    {
        print("Rider Password :")
        let temp = readLine()!
        var returnVariable = ""
        if temp.isEmpty == false {
            let isValid = temp.isValidPassword()
            if isValid == true{
                returnVariable = temp
            }else{
                print("You entered Invalid Password \(String(describing: temp))")
                print("Please Enter Pasword Again")
                enterPassword()
            }
        }else{
            print("You haven't entered the password, please enter")
            enterPassword()
        }
        self.setPassword(password: returnVariable)
    }
    
    func enterContact()
    {
        print("Rider Contact :")
        let temp = readLine()!
        var returnVariable = ""
        if temp.isEmpty == false {
            let isValid = temp.isValidContact()
            if isValid == true{
                returnVariable = temp
            }else{
                print("You entered Invalid Contact Number \(String(describing: temp))")
                print("Please Enter Contact number")
                enterContact()
            }
        }else{
            print("You haven't entered the Contact Number, please enter")
            enterContact()
        }
        self.contact = returnVariable
        
    }
    
    func getRiderDetails()
    {
        print("******* Please Enter Your Details *******")
        
        self.enterFirstName()
        
        self.enterLastName()
        
        self.enterEmail()
        
        self.enterPassword()
        
        self.enterContact()
        
        self.addFunds()
    }
    
    static func signUp(rider: Rider)
    {
        //print("---------Signing in New Rider---------")
        
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
        print("Enter New Details")
        self.getRiderDetails()
    }
    
    func addFunds()
    {
        print("******* How Much money You would like to add *******")
        let tempMoney = Double(readLine()!)
        //tempMoney = self.card!["1"]! + tempMoney!
        self.cardBalance = tempMoney
    }
    
    static func login()
    {
        print("Enter Your Rider Id")
        let tempId = readLine()
        
        print("Enter Your Password")
        let tempPass = readLine()
        
        for i in Rider.riderDict{
            if i.key == tempId && i.value.password == tempPass
            {
                print("Logged in")
            }else{
                print("Invalid credentials")
            }
        }
    }
    
    override func Display()
    {
        print("---------Rider Details---------")
        super.Display()
        print("\nRider Name :" , self.fullName ?? "No Full Name Given"
            , "\nRider Email :" , self.email ?? "No email given"
            , "\nRider Contact Number :" , self.contact ?? "No contact number given"
            , "\n\n---------Rider's Card Details---------"
            , "\nCard balance :", "$", self.cardBalance ?? "Card balance not available"
        ,"\n")
    }
}
