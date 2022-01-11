//
//  DataFetcher.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol DataSourceProtocol{
    
    func fetchAllData()
    func addRecord(_: MoneyRecord)
    
    var allDataReference: [MoneyRecord] { get }
}

class DataFetcher: HistoryWorkerProtocol{
    
    var historyInteractor: HistoryInteractorProtocol?
    
    func dataHasBeenUpdated() {
        print("__ DATA FETCHER - dataHasBeenUpdated")
        historyInteractor?.dataHasBeenUpdated()
    }
    
    var dataSource: DataSourceProtocol?
    
    init(){
        dataSource = TestDataSource()
    }
   
    func fetchAllData() {
        print("__start fetchAllData in DataFetcher")
        dataSource?.fetchAllData()
        dataHasBeenUpdated()
    }
    
    func addRecord(_ rec: MoneyRecord) {
        dataSource?.addRecord(rec)
    }
}
