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
    
    var data: [MoneyRecord] = []
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
       
        let hInter = HistoryInteractor()
        hInter.dataFetcher = DataFetcher()
        
        interactor = hInter
        
        interactor?.presenter = HistoryPresenter()
        interactor?.presenter?.viewController = self
    }
    
    @objc func addTask(){
       // data.insert("new element", at: 0)
        tableView.reloadData()
        print("___data count = \(data.count)")
    }
    
}

