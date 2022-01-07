//
//  HistoryInteractor.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol HistoryInteractorProtocol{
    func loadMoneyFlowHistory()
    var presenter: HistoryPresenterProtocol? { get set }
}

class HistoryInteractor: HistoryInteractorProtocol{
    
    var presenter: HistoryPresenterProtocol?
    var dataFetcher: HistoryWorkerProtocol?
    
    func loadMoneyFlowHistory() {
        print("__HistoryInteractor::loadMoneyFlowHistory()")
        dataFetcher?.getAllMoneyFlowRecords({ records in
            presenter?.showAllRecord(records ?? [])
        })
    }
}
