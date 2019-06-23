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
   
}
