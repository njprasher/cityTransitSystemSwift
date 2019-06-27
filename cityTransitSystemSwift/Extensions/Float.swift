//
//  Double.swift
//  cityTransitSystemSwift
//
//  Created by Hargun Marya on 2019-06-26.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation

extension Float
{
    public func currency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}
