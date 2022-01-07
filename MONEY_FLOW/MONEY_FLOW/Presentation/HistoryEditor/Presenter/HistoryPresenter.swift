//
//  HistoryPresenter.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol HistoryPresenterProtocol{
    func showAllRecord(_ records: [MoneyRecord])
    var viewController: HistoryViewControllerProtocol? { get set }
}

class HistoryPresenter: HistoryPresenterProtocol{
    
    var viewController: HistoryViewControllerProtocol?
    
    func showAllRecord(_ records: [MoneyRecord]) {
        print("__TRY PRESENT \(records)")
        viewController?.data = records
    }
    
}
