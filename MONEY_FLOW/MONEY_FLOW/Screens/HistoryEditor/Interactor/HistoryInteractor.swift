//
//  HistoryInteractor.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol HistoryInteractorProtocol{
  
    var presenter: HistoryPresenterProtocol? { get set }
    var dataWorker: HistoryWorkerProtocol? { get set }
    
    func loadMoneyFlowHistory()
    func addRecord(_: MoneyRecord)
    
    func dataHasBeenUpdated()
    func setInteractorDependency(dataRef: [MoneyRecord])
   
}

class HistoryInteractor: HistoryInteractorProtocol{
    
    var presenter: HistoryPresenterProtocol?
    var dataWorker: HistoryWorkerProtocol?
   
    func setInteractorDependency(dataRef: [MoneyRecord]) {
        presenter?.setPresenterDependency(dataRef: dataRef)
    }
    
    func dataHasBeenUpdated() {
        print("__INTERACTOR data has been updated")
        presenter?.dataHasBeenUpdated()
    }
    
    
    func loadMoneyFlowHistory() {
        print("__HistoryInteractor::loadMoneyFlowHistory()")
        dataWorker?.fetchAllData()
    }
    
    func addRecord(_ rec: MoneyRecord) {
        dataWorker?.addRecord(rec)
    }
}
