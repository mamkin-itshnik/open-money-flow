//
//  ViewController.swift
//  MONEY_FLOW
//
//  Created by Евгений on 05.01.2022.
//

import UIKit

class HistoryOfRecordScreen: UIViewController {
    
    var data: [String] = ["1","3","2"]
    
    lazy var addRecordButton = makeAddRecordButton()
    lazy var tableView = makeTableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
       
        buildUI()
        tableView.reloadData()
    }
    
    @objc func addTask(){
        data.insert("new element", at: 0)
        tableView.reloadData()
        print("___data count = \(data.count)")
    }
    
}

