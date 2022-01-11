//
//  HistoryWorker.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol HistoryWorkerProtocol{

    var historyInteractor: HistoryInteractorProtocol? { get set }
    func dataHasBeenUpdated()
    
    func fetchAllData() //:  [MoneyRecord]?->())
    func addRecord(_: MoneyRecord)
}

class HistoryWorker: HistoryWorkerProtocol{
    
    var historyInteractor: HistoryInteractorProtocol?
    
    func dataHasBeenUpdated(){
        historyInteractor?.dataHasBeenUpdated()
    }
    
    var dataSource: DataSourceProtocol?
    
    func fetchAllData() {
        dataSource?.fetchAllData()
    }
    
    func addRecord(_: MoneyRecord) {
        //TODO: 
    }
    
    
}

