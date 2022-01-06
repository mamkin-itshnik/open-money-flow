//
//  MoneyEvent.swift
//  MONEY_FLOW
//
//  Created by Евгений on 05.01.2022.
//

import Foundation

enum MoneyEvent{
    case income
    case outcome
}

struct MoneyRecord{
    var type: MoneyEvent
    var value: Double
    var category: String
    var date: UInt
}
