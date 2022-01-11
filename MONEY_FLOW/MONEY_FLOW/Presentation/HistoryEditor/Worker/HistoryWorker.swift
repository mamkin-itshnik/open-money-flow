//
//  HistoryWorker.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol HistoryWorkerProtocol{
    
    var presenter: HistoryPresenterProtocol? { get set }
    var reciveAllData: (([MoneyRecord]) -> ())? { get set }
    
    func fetchAllData() //:  [MoneyRecord]?->())
    func addRecord(_: MoneyRecord)
}

