//
//  Admin.swift
//  cityTransitSystemSwift
//
//  Created by Neeraj Prasher on 2019-06-18.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation
class Admin
    {
    var adminName : String?
    var adminEmail : String?
    
    // Array of driver class
    //lazy var arrayDriver: [Driver] = [Driver]()

init()
   {
    self.adminName = String()
    self.adminEmail = String()
    }
    
    
    func display()
    {
        print(self.adminName ?? "No Name"  , self.adminEmail ?? "No Email" )
    }
    func displayRiders()
    {
        
    }
}
