//
//  Storage.swift
//  MONEY_FLOW
//
//  Created by Евгений on 06.01.2022.
//

import Foundation

protocol DataAccessorProtocol {
    func saveRecord(_ rec: MoneyRecord)
    func getAllRecords() -> [MoneyRecord]
}

class Storage{
    var gate: DataAccessorProtocol?
    
    func saveRecord(_ rec: MoneyRecord){
        guard let gate = gate else {
            writeLog("__saveRecord ERROR")
            return
        }
        gate.saveRecord(rec)
    }
    
    func getAllRecords() -> [MoneyRecord] {
        guard let gate = gate else {
            writeLog("__getRecords ERROR")
            return []
        }
        return gate.getAllRecords()
    }
    
    
}
