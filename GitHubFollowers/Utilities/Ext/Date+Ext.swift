//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Tyler Bobella on 2/11/21.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
