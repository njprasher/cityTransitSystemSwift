//
//  Admin.swift
//  cityTransitSystemSwift
//
//  Created by Neeraj Prasher on 2019-06-18.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation
class Admin : Users
    {
    var adminName : String?
    var adminEmail : String?
    var contact: String?
   lazy var arrayDrivers:[Driver] = [Driver]()
    override init()
   {
    self.adminName = String()
    self.adminEmail = String()
    self.contact = String()
    super.init()
    }
    private static var dictAdmin=[Int : Admin]()
    init(id : String , _password : String,  adminName : String ,adminEmail : String  , contact : String)
    {
        
        self.adminName = adminName
        self.adminEmail = adminEmail
        self.contact = contact
        super.init()
    }
    
    override func Display() {
        print("---------ADMIN DETAILS----------")
        super.Display()
        print("\nAdmin Name :" , self.adminName ?? "No Name Given"
            , "\nAdmin Email :" , self.adminEmail ?? "No email given"
            , "\nAdmin Contact Number :" , self.contact ?? "No contact number given")
        print("--------DRIVER DETAILS----------")
        for driver in self.arrayDrivers
        {
            driver.Display()
        }
        
    }
    static func addDriver(driver : Driver)
    {
        
        
    }
    func removeDriver(driverId : Int)
    {
        
    }
    
    
}
