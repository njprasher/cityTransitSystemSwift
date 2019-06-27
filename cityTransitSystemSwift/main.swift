//
//  main.swift
//  cityTransitSystemSwift
//
//  Created by Neeraj Prasher on 2019-06-17.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation


/*
print("Enter Your Credentials")
print("Username")
let username = "adminHargun"
let password = "hargun123"
let isValidEmployee: Int = authenticateEmployee(username: username!, password: password!)
if isValidEmployee == 1{
    print("Authetication Successful")

    func authenticateEmployee(username: String,password: String) -> Int {
        var flag : Int = 0
        if id.username == username && id.password == password {
                flag = 1
            
        }
        return flag
    }
*/
// Create Admin Object
var user = Users(id: "1",password: "12233")
var adminData = Admin()
var newDriver1 = Driver(id: "2", password: "1829389", driverFirstName: "Gurwinder", driverLastName: "singh", driverEmail: "abc@c.com", driverPhone: "6475259586", driverSalary: 1000.89, driverBirth: Date(), driverAddress: "Lambton")

var newDriver2 = Driver(id: "3", password: "182938uu9", driverFirstName: "Hargun", driverLastName: "Kaur", driverEmail: "abc88@c.com", driverPhone: "649586", driverSalary: 100.89, driverBirth: Date(), driverAddress: "Lambton")

//Admin.loginAdmin()
if Admin.loginAdmin() == true{
adminData.addDriver(driver: newDriver1)
adminData.addDriver(driver: newDriver2)
//hDriver.login()
adminData.removeDriver(driver: newDriver1)
adminData.Display()
//driver.Display()
// Cretae driver details
    
    
}
else
{
    print("Enter Correct userName and Password")
}







