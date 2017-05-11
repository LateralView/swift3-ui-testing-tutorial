//
//  Date.swift
//  UITestExample
//
//  Created by Fernando Gonzalez on 3/6/17.
//  Copyright © 2017 LateralView. All rights reserved.
//

import Foundation

extension Date {
    
    var day : Int {
        let calendar = Calendar(identifier: .gregorian)
        return calendar.component(.day, from: self)
    }

    var weekDay : Int {
        let calendar = Calendar(identifier: .gregorian)
        var weekDay = calendar.component(.weekday, from: self)
        weekDay = weekDay - 2
        if weekDay == -1 {
            weekDay = 6
        }
        return weekDay
    }

    var yearsSince : Int {
        let calendar = Calendar(identifier: .gregorian)
        let ageComponents = calendar.dateComponents([.year], from: self, to: Date())
        return ageComponents.year!
    }

    func toString(_ format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
    static func fromString(_ format: String, _ string: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: string)!
    }
    
    static func today() -> Date {
        let calendar = Calendar.current
        var comps = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: Date())
        comps.hour = 0
        comps.minute = 0
        comps.second = 0
        let today : Date = calendar.date(from: comps)!
        return today
    }
    
}
