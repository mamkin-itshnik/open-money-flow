//
//  TestDataFetcher.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

class TestDataSource: DataSourceProtocol{
    func getAllRecord() -> [MoneyRecord]? {
        
        let rec1 = MoneyRecord(type: .income, value: 10, category: "1", date: 1)
        let rec2 = MoneyRecord(type: .income, value: 20, category: "12", date: 12)
        let rec3 = MoneyRecord(type: .income, value: 30, category: "123", date: 13)
        let rec4 = MoneyRecord(type: .income, value: 40, category: "1234", date: 14)
        
        return [rec1, rec2, rec3, rec4]
    }
    
    
}
