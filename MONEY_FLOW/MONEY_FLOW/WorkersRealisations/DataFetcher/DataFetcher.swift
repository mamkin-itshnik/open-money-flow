//
//  DataFetcher.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol DataSourceProtocol{
    func fetchAllRecord()
    func addRecord(_: MoneyRecord)
    var reciveAllData: (([MoneyRecord]) -> ())? { get set }
}

class DataFetcher: HistoryWorkerProtocol{
    
    var reciveAllData: (([MoneyRecord]) -> ())?
    
    var presenter: HistoryPresenterProtocol? = nil {
        didSet{
            print("___ dataSource?.reciveAllData = presenter?.reciveAllData")
            dataSource?.reciveAllData = presenter?.reciveAllData
        }
    }
    
    var dataSource: DataSourceProtocol?
    
    init(){
        dataSource = TestDataSource()
    }
   
    func fetchAllData() {
        print("__start fetchAllData in DataFetcher")
        dataSource?.fetchAllRecord()
    }
    
    func addRecord(_ rec: MoneyRecord) {
        dataSource?.addRecord(rec)
    }
}
