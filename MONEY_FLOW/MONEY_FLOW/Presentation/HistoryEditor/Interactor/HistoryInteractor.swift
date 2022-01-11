//
//  HistoryInteractor.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol HistoryInteractorProtocol{
    func loadMoneyFlowHistory()
    func addRecord(_: MoneyRecord)
    
    var presenter: HistoryPresenterProtocol? { get set }
    var dataWorker: HistoryWorkerProtocol? { get set }
}

class HistoryInteractor: HistoryInteractorProtocol{
      
    var presenter: HistoryPresenterProtocol?
    var dataWorker: HistoryWorkerProtocol?
    
    func loadMoneyFlowHistory() {
        print("__HistoryInteractor::loadMoneyFlowHistory()")
        dataWorker?.fetchAllData()
    }
    
    func addRecord(_ rec: MoneyRecord) {
        dataWorker?.addRecord(rec)
    }
}
