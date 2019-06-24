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

    
        
         func Display() {
            print("---------Driver Details---------")
           // super.Display()
            print("Driver Id : \(String(describing: self.driverId!))")
            print("Driver name : \(String(describing: self.driverName!))")
            let isValidEmail = driverEmail!.isValidEmail()
            if isValidEmail == true
            {
                print("Driver Email : \(String(describing: self.driverEmail!))")
            }
            else
            {
                print("Email ID : Invalid Email ! Try Again")
            }

            print("Driver Phone Number : \(String(self.driverPhone!))")
            print("Driver Salary is : \(String(describing: self.driverSalary!))")
            print("Date of Birth: \(String(describing: self.driverBirth))")
            print("Driver Address : \(String(describing: self.driverAddress!))")
        }
    
    //https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift
    
   /* func isValidEmail(testStr:String) -> Bool {
        print("validate emilId: \(testStr)")
        let emailRegEx = "^(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?(?:(?:(?:[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+(?:\\.[-A-Za-z0-9!#$%&’*+/=?^_'{|}~]+)*)|(?:\"(?:(?:(?:(?: )*(?:(?:[!#-Z^-~]|\\[|\\])|(?:\\\\(?:\\t|[ -~]))))+(?: )*)|(?: )+)\"))(?:@)(?:(?:(?:[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)(?:\\.[A-Za-z0-9](?:[-A-Za-z0-9]{0,61}[A-Za-z0-9])?)*)|(?:\\[(?:(?:(?:(?:(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))\\.){3}(?:[0-9]|(?:[1-9][0-9])|(?:1[0-9][0-9])|(?:2[0-4][0-9])|(?:25[0-5]))))|(?:(?:(?: )*[!-Z^-~])*(?: )*)|(?:[Vv][0-9A-Fa-f]+\\.[-A-Za-z0-9._~!$&'()*+,;=:]+))\\])))(?:(?:(?:(?: )*(?:(?:(?:\\t| )*\\r\\n)?(?:\\t| )+))+(?: )*)|(?: )+)?$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: testStr)
        return result
    } */
    
    func validate(value: String) -> Bool {
        let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
    
    
    
        
        
}
