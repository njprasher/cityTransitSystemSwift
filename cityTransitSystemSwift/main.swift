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
var r1 = Rider(id: "1", password: "123", firstName: "Neeraj", lastName: "Prasher", email: "nj@gmail.com", contact: "2892330609", cardBalance: 88.0)
var r2 = Rider(id: "2", password: "123", firstName: "Gurwinder", lastName: "Singh", email: "gurwinder@mail.com", contact: "2345432768", cardBalance: 96.8)
var r3 = Rider(id: "3", password: "123", firstName: "Hargun", lastName: "", email: "hargun@mail.com", contact: "8787878767", cardBalance: 90.9)

var r4 = Rider()

r4.id = "4"

Rider.displayRiders()

r4.getRiderDetails()

r4.Display()

//Rider.displayBybalance()

//Rider.login()
