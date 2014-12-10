//
//  EpochUtils.swift
//  EpochConverter
//
//  Created by James Perih on 2014-12-09.
//  Copyright (c) 2014 Hot Dang Interactive. All rights reserved.
//

import Foundation

func stringFromEpochDouble(epochDouble: Double) -> String {
    let date = NSDate(timeIntervalSince1970: epochDouble)
    var dateFormatter = fullFriendlyDateFormatter()
    
    return dateFormatter.stringFromDate(date)
}

func fullFriendlyDateFormatter() -> NSDateFormatter {
    let friendlyDateFormatter = NSDateFormatter()
    friendlyDateFormatter.dateFormat = "eeee, MMMM dd, yyyy hh:mm:ss xx"
    return friendlyDateFormatter
}