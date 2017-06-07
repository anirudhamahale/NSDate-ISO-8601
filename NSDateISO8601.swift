//
//  NSDateISO8601.swift
//
//  Created by Justin Makaila on 8/11/14.
//  Copyright (c) 2014 Present, Inc. All rights reserved.
//

import Foundation

public extension Date {
    public static func ISOStringFromDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale!
        dateFormatter.timeZone = NSTimeZone(abbreviation: "GMT")! as TimeZone
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
        
        return dateFormatter.string(from: date).appending("Z")
    }
    
    public static func ISOStringOfCurrentDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale!
        dateFormatter.timeZone = NSTimeZone(abbreviation: "GMT")! as TimeZone
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
        
        return dateFormatter.string(from: self.init()).appending("Z")
    }
    
    
    public static func dateFromISOString(string: String) -> NSDate {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale!
        dateFormatter.timeZone = NSTimeZone.local
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        return dateFormatter.date(from: string)! as NSDate
    }
}
