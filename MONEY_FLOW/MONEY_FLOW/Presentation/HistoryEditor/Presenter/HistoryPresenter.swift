//
//  HistoryPresenter.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol HistoryPresenterProtocol{
    
    var reciveAllData: (([MoneyRecord]) -> ())? { get set }
    func showAllRecord(_ records: [MoneyRecord])
    var viewController: HistoryViewControllerProtocol? { get set }
}

class HistoryPresenter: HistoryPresenterProtocol{
    
    var reciveAllData: (([MoneyRecord]) -> ())?
    var viewController: HistoryViewControllerProtocol?
    
    init(){
        reciveAllData = {[weak self] data in
            self?.showAllRecord(data)
        }
    }
  
    func showAllRecord(_ records: [MoneyRecord]) {
        print("__TRY PRESENT \(records)")
        viewController?.data = records
    }
    
}
