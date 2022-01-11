//
//  ViewController.swift
//  MONEY_FLOW
//
//  Created by Евгений on 05.01.2022.
//

import UIKit
protocol HistoryViewControllerProtocol{
    var data: [MoneyRecord] { get set }
    func needUpdData()
}
class HistoryOfRecordScreen: UIViewController, HistoryViewControllerProtocol {
    
    
    func needUpdData() {
        print("___needUpdData")
        tableView.reloadData()
    }
    
    
    //MARK: something wrong. data copy every operation (upd/add/dell etc)
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
        let dataFetcher = DataFetcher()
        //MARK: cycle strong ref ALARM!!!
        dataFetcher.historyInteractor = interactor
        interactor?.dataWorker = dataFetcher
        
        interactor?.setInteractorDependency(dataRef: dataFetcher.dataSource?.allDataReference ?? [])
        
        let historyPresenter = HistoryPresenter()
        
        interactor?.presenter = historyPresenter
        interactor?.presenter?.viewController = self

    }
    
    @objc func addTask(){
        let emptyRecord = MoneyRecord(type: .income, value: 777, category: "drink", date: 333)
        interactor?.addRecord(emptyRecord)
        
    }
    
}

