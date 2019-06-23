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
    var name: String?
    var birth: Date?
    var email: String?
    var contact: String?
    var card: Dictionary<String, Double>?
    
    private static var riderDict=[String:Rider]()
    
    override init() {
        self.name = String()
        self.birth = Date()
        self.email = String()
        self.contact = String()
        self.card = Dictionary<String, Double>()
        super.init()
    }
    
    override func Display()
    {
        print("---------Rider Details---------")
        super.Display()
        print("\nRider Name :" , self.name ?? "No Name Given"
            , "\nRider Birth Date :" , self.birth ?? "No birthdate given"
            , "\nRider Email :" , self.email ?? "No email given"
            , "\nRider Contact Number :" , self.contact ?? "No contact number given"
            , "\n\n---------Rider's Card Details---------"
            , "\n\nCard Number :", self.card?.keys ?? "Card number not available"
            , "\nCard balance :", "$", self.card?.values ?? "Card balance not available")
    }
}
