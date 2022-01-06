//
//  CoreDataAccessor.swift
//  MONEY_FLOW
//
//  Created by Евгений on 06.01.2022.
//

import Foundation


class CoreDataAccessor: DataAccessorProtocol{
    
    func saveRecord(_ rec: MoneyRecord) {
        //
    }
    
    func getAllRecords() -> [MoneyRecord] {
        let whenCreated = Date.now.millisecondsSince1970
        
        return [MoneyRecord(type: .income, value: 1, category: "hz", date: whenCreated, UID: whenCreated)]
    }
    
    
}
