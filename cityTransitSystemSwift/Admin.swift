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
    var adminName : String
    var adminEmail : String?
    var contact: String?
    
    override init()
    {
        self.adminName = "Hargun"
        self.adminEmail = "hargun@abc.com"
        self.contact = "6475259586"
        super.init()
    }
    
    // Dictionary created
    var dictDrivers=Driver.driverDict
    
    /* init(adminId: String,adminPass: String,adminName: String,adminEmail: String,adminContact: String) {
     self.adminName = adminName
     self.adminEmail = adminEmail
     self.contact = adminContact
     super.init(id: adminId, password: adminPass)
     }*/
    
    
    static func loginAdmin() -> Bool
    {
        print("Enter Adminitrator Id : ")
        let tempId = readLine()
        
        print("Enter Password : ")
        let tempPass = readLine()
        
        if tempId == "hargun123" && tempPass == "guri123"{
           return true
        }
        else{
            print("Recheck Id and Password and Enter it again Otherwise leave it!!!")
            return false
        }
    }
    
    
    func addDriver(driver: Driver)
    {
        dictDrivers.updateValue(driver, forKey: driver.id ?? "Driver Not Created")
        //Driver.registerNewDriver(driver: driver)
    }
    func removeDriver(driver: Driver)
    {
        dictDrivers.removeValue(forKey: driver.id ?? "No driver is present for this Id")
    }
    override func Display() {
        super.Display()
        print("---------ADMIN DETAILS----------")
        print("\nAdmin Name :" , self.adminName)
        let isValidEmail = adminEmail!.isValidEmail()
        if isValidEmail == true
        {
            print("Admin Email : \(String(describing: self.adminEmail!))")
        }
        else
        {
            print("Email ID : Invalid Email ! Try Again")
        }
        let isValidContactNumber = contact?.isValidContact()
        
        if isValidContactNumber == true
        {
            print("Admin Contact : \(String(describing: self.contact!))")
        }
        else
        {
            print("Contact Number : Invalid Phone Number ! Try Again")
        }
        
        // Display details of Drivers
        
        for i in dictDrivers
        {
            print(i.value.Display())
        }
        
        
    }
    
    func totalNumbersOfDrivers(){
        print("Total Number of Drivers are : \(dictDrivers.count)")
    }
    
    
    func updateDriverDetail(driver: Driver)  {
        driver.setDriverData(driver: driver)
    }
    
    
    func getDriverById(ddriver:Driver) -> Driver?     {
        
        if let driver = dictDrivers[ddriver.id!] {
            return driver as Driver
        }
        else {
            return nil
        }
    }
    
}














