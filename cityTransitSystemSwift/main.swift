//
//  main.swift
//  cityTransitSystemSwift
//
//  Created by Neeraj Prasher on 2019-06-17.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation

// Create Admin Object
var adminData = Admin()

// Enter object details
adminData.adminName = "Hargun"
adminData.adminEmail = "hargun27@gmail.com"
adminData.id = "1"
adminData.setPassword(password: "123")
adminData.contact = "9876543216"


// Cretae driver details
var d1:Driver = Driver.init(driverId:"2", driverName: "Guri", driverEmail: "guri12@gmail.com", driverPhone: 67862344444, driverSalary: 5677.00, driverBirth:Date(), driverAddress: "23,elgin dr")
var d2:Driver = Driver.init(driverId:"3", driverName: "Hargun", driverEmail: "hargun23@gmail.com1", driverPhone: 6781112226, driverSalary: 5677.00, driverBirth:Date(), driverAddress: "12 elgin dr")


adminData.addDriver(driver: d1)
adminData.addDriver(driver: d2)
adminData.Display()
adminData.totalNumbersOfDrivers()







