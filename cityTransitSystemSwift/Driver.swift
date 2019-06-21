//
//  Driver.swift
//  cityTransitSystemSwift
//
//  Created by Neeraj Prasher on 2019-06-18.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation

class Driver:Display{
    
    
    
    // declaring variables
    var driverName : String?
    var driverEmail: String?
    var driverPhone: Int?
    var driverSalary: Double?
    var driverBirth: String?
    var driverAddress: String?
    
    // INITIALSE THE VARIABLES
    init(driverName: String,driverEmail: String,driverPhone: Int,driverSalary: Double,driverBirth: String,driverAddress: String ) {
        self.driverName = driverName
        self.driverEmail = driverEmail
        self.driverPhone = driverPhone
        self.driverSalary = driverSalary
        self.driverBirth = driverBirth
        self.driverAddress = driverAddress
    }
    
    func Display() {
        print("Driver name : \(String(describing: self.driverName!))")
        print("Driver Email : \(String(describing: self.driverEmail!))")
        print("Driver Phone Number : \(String(self.driverPhone!))")
        print("Driver Salary is : \(String(self.driverSalary!))")

        
    }
    
}
