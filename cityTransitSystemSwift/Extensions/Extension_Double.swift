//
//  Extension_Double.swift
//  cityTransitSystemSwift
//
//  Created by Neeraj Prasher on 2019-06-23.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation


extension Double
{
    public func currency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}
