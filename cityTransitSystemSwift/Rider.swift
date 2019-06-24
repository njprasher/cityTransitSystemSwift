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
