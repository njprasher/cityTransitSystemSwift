//
//  Extension_Date.swift .swift
//  cityTransitSystemSwift
//
//  Created by MacStudent on 2019-06-21.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation

extension Date
{
    public func getForamttedDate() -> String
    {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "EEEE, dd MMMM, yyyy"
        let formattedDate = dateFormatterPrint.string(from: self)
        return formattedDate
    }
}
