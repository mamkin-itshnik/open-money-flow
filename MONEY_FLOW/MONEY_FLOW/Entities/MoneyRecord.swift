//
//  MoneyEvent.swift
//  MONEY_FLOW
//
//  Created by Евгений on 05.01.2022.
//

import Foundation

enum MoneyEvent: String{
    case income
    case outcome
}

struct MoneyRecord: CustomStringConvertible{
    var description: String  {
        return "\(type.rawValue) \(value)$ in \(category) on \(date)"
    }
    
    var type: MoneyEvent
    var value: Double
    var category: String
    var date: UInt
}
