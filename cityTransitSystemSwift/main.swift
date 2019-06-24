//
//  main.swift
//  cityTransitSystemSwift
//
//  Created by Neeraj Prasher on 2019-06-17.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation
//var a = Admin()
//a.adminName = "Hargun"
//a.adminEmail = "hargun27@gmail.com"
//a.Display()
//
//
var r1 = Rider()
var r2 = Rider()
var r3 = Rider()

r1.enterFirstName()

r1.addFunds()

Rider.signUp(rider: r1)

Rider.displayRiders()

