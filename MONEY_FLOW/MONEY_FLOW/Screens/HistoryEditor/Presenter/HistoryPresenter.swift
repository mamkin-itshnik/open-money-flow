//
//  HistoryPresenter.swift
//  MONEY_FLOW
//
//  Created by Евгений on 08.01.2022.
//

import Foundation

protocol HistoryPresenterProtocol{
    
    func dataHasBeenUpdated()
    func setPresenterDependency(dataRef: [MoneyRecord])
    var viewController: HistoryViewControllerProtocol? { get set }
}

class HistoryPresenter: HistoryPresenterProtocol{
    
    var viewController: HistoryViewControllerProtocol?
    
    func setPresenterDependency(dataRef: [MoneyRecord]) {
        if viewController == nil {
            print("__ ERROR injectDataArrayRef")
            fatalError()
        }else{
            viewController?.data = dataRef
        }
    }
    
    func dataHasBeenUpdated(){
        //TODO: viewController reload all data
        print("__ PRESENTER want signal view to reload data")
        viewController?.needUpdData()
    }
        
}
