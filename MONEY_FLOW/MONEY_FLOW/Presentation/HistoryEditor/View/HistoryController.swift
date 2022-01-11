//
//  ViewController.swift
//  MONEY_FLOW
//
//  Created by Евгений on 05.01.2022.
//

import UIKit
protocol HistoryViewControllerProtocol{
    var data: [MoneyRecord] { get set }
}
class HistoryOfRecordScreen: UIViewController, HistoryViewControllerProtocol {
    
    var data: [MoneyRecord] = [] {
        didSet{
            tableView.reloadData()
            print("___data count = \(data.count)")
        }
    }
    var interactor: HistoryInteractorProtocol?
    
    lazy var addRecordButton = makeAddRecordButton()
    lazy var tableView = makeTableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
       
        buildUI()
        tableView.reloadData()
        setUpDependency()
        
        interactor?.loadMoneyFlowHistory()
    }
    
    func setUpDependency(){
       
        interactor = HistoryInteractor()
        interactor?.dataWorker = DataFetcher()
        
        let historyPresenter = HistoryPresenter()
        
        interactor?.presenter = historyPresenter
        interactor?.dataWorker?.presenter = historyPresenter
        interactor?.presenter?.viewController = self

    }
    
    @objc func addTask(){
        let emptyRecord = MoneyRecord(type: .income, value: 777, category: "drink", date: 333)
        interactor?.addRecord(emptyRecord)
        
    }
    
}

