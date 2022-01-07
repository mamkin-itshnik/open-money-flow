//
//  DataFetcher.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol DataSourceProtocol{
    func getAllRecord() -> [MoneyRecord]?
}

class DataFetcher: HistoryWorkerProtocol{
    
    var dataSource: DataSourceProtocol? = TestDataSource()
    
    func getAllMoneyFlowRecords(_ result: ([MoneyRecord]?) -> ()) {
        result(dataSource?.getAllRecord())
    }
}
