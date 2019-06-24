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
    
    var drivercnt = 0
    var adminName : String
   var adminEmail : String?
  var contact: String?
    
    override init()
   {
    self.adminName = String()
    self.adminEmail = String()
    self.contact = String()
    super.init()
    }
    var dictDrivers=[String:Driver]()
    
    //lazy var arrayDriver:[Driver] = [Driver]()

    init(adminName: String,adminEmail: String,adminContact: String) {
        self.adminName = adminName
        self.adminEmail = adminEmail
        self.contact = adminContact
        super.init()
    }
   
    
   
    func addDriver(driver : Driver)
    {
        
        dictDrivers.updateValue(driver, forKey: driver.driverId ?? "No Id")
    }
    func removeDriver(driver: Driver)
    {
        dictDrivers.removeValue(forKey: driver.driverId!)
        
        //var newArrayDriver:[Driver] = [Driver]()
        //for driver in self.arrayDrivers {
          //  if driver.driverId != driverId {
            //    newArrayDriver.append(driver)
           // }
      //  }
     //   self.arrayDrivers = newArrayDriver
    }

    override func Display() {
        super.Display()
        print("---------ADMIN DETAILS----------")
        print("\nAdmin Name :" , self.adminName
            , "\nAdmin Email :" , self.adminEmail ?? "No email given"
            , "\nAdmin Contact Number :" , self.contact ?? "No contact number given")
               
        for i in dictDrivers {
            print(i.value.Display())
        }
        
        
    }
    
    func totalNumbersOfDrivers(){
        print("Total Number of Drivers are : \(dictDrivers.count)")
    }
    
    
    func NewValidateSalary(salary: Double) throws
    {
        guard salary >= 0
            else { throw SalaryError.NonNegative(s: salary) }
        guard salary != 0
            else { throw SalaryError.NonZero }
        guard salary > 2000
            else { throw SalaryError.LessThanTwoThousand(s: salary) }
        
        do
        {
           try NewValidateSalary(salary: 3000)
            print("Right salary")
        }
        catch SalaryError.NonZero
        {
            print("Salary equals 0")
        }
        catch SalaryError.NonNegative(let s)
        {
            print("Salary Negative \(s)")
        }
        catch SalaryError.LessThanTwoThousand(let s)
        {
            print("Salary less than 2000 => \(s)")
        }
        catch
        {
            print(error)
        }
    }
    func getDriverById(ddriver:Driver) -> Driver?     {
        
        if let driver = dictDrivers[Int(ddriver.driverId!)] {
            return driver as Driver
        }
        else {
            return nil
        }
    }
    
}
