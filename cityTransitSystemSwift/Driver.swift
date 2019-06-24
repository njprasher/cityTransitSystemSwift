//
//  Driver.swift
//  cityTransitSystemSwift
//
//  Created by Neeraj Prasher on 2019-06-18.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation


class Driver{
        
        // declaring variables
    
    var driverId: String?
        private var driverName : String?
        var getDriverName: String{
            return self.driverName!
        }
        private var driverEmail: String?
        var getDriverEmail: String{
            return self.driverEmail!
        }
        private var driverPhone: Int?
        var getDriverPhone: Int{
            return self.driverPhone!
        }
        private var driverSalary: Double?
        var getDriverSalary: Double{
            return self.driverSalary!
        }
        private var driverBirth = Date()
        var getDriverBirth: Date{
            return self.driverBirth
        }
        private var driverAddress: String?
        var getDriverAddress: String{
            return self.driverAddress!
        }
        
        
         init()
        {
            self.driverName = String()
            self.driverEmail = String()
            self.driverPhone = Int()
            self.driverSalary = Double()
            self.driverBirth = Date()
            self.driverAddress = String()
            self.driverId = String()
           // super.init()
        }
    
    // INITIALSE THE VARIABLES
    
    init(driverId: String, driverName: String,driverEmail: String,driverPhone: Int,driverSalary: Double,driverBirth: Date,driverAddress: String )
        {
            self.driverName = driverName
            self.driverEmail = driverEmail
            self.driverPhone = driverPhone
            self.driverSalary = driverSalary
            self.driverBirth = driverBirth
            self.driverAddress = driverAddress
            self.driverId = driverId
            //super.init()
        }
        
        // Set Driver Data
        func setDriverName(dName: String){
            self.driverName = dName
        }
        
        func setDriverEmail(dEmail: String){
            self.driverEmail = dEmail
        }
        
        func setDriverPhone(dPhone: Int){
            self.driverPhone = dPhone
        }
        
        func setDriverSalary(dSalary: Double){
            
            self.driverSalary = dSalary
        }
        
        func setDriverBirth(dBirth: Date){
            self.driverBirth = dBirth
        }
        
        func setDriverAddress(dAddress: String){
            self.driverAddress = dAddress
        }
        
        // Driver Array
        
        private static var dictDriver=[String:Driver]()

        
        // Salary error handling

    
        
         func Display() {
            print("---------Driver Details---------")
           // super.Display()
            print("Driver Id : \(String(describing: self.driverId!))")
            print("Driver name : \(String(describing: self.driverName!))")
            print("Driver Email : \(String(describing: self.driverEmail!))")
            print("Driver Phone Number : \(String(self.driverPhone!))")
            print("Driver Salary is : \(String(describing: self.driverSalary!))")
            print("Date of Birth: \(String(describing: self.driverBirth))")
            print("Driver Address : \(String(describing: self.driverAddress!))")
        }
    
    
    
    
        
        
}
