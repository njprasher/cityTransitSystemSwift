//
//  enum.swift
//  cityTransitSystemSwift
//
//  Created by Hargun Marya on 2019-06-24.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation
enum SalaryError : Error
{
    case NonZero
    case NonNegative(s: Double)
    case LessThanTwoThousand(s: Double)
}
