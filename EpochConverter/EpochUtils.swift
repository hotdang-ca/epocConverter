//
//  EpochUtils.swift
//  EpochConverter
//
//  Created by James Perih on 2014-12-09.
//  Copyright (c) 2014 Hot Dang Interactive. All rights reserved.
//

import Foundation

func stringFromEpochDouble(epochDouble: Double) -> String {
    let date = Date(timeIntervalSince1970: epochDouble)
    let dateFormatter = _fullFriendlyDateFormatter()
    
    return dateFormatter.string(from: date)
}

func _fullFriendlyDateFormatter() -> DateFormatter {
    let friendlyDateFormatter = DateFormatter()
    friendlyDateFormatter.dateFormat = "eeee, MMMM dd, yyyy hh:mm:ss xx"
    return friendlyDateFormatter
}
