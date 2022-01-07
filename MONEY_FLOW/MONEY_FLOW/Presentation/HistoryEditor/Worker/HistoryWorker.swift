//
//  HistoryWorker.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol HistoryWorkerProtocol{
    func getAllMoneyFlowRecords(_: ([MoneyRecord]?)->()) //:  [MoneyRecord]?->())
}

