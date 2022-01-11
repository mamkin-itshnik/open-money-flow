//
//  HistoryControlllerBuilder.swift
//  MONEY_FLOW
//
//  Created by Евгений on 07.01.2022.
//

import UIKit

extension HistoryOfRecordScreen{
    
    func makeTableView() -> UITableView {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.delegate = self
        table.dataSource = self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.transform = CGAffineTransform(scaleX: 1, y: -1)
        return table
    }
    
    func makeAddRecordButton() -> UIButton {
        let button = UIButton(frame: CGRect.zero)
        button.backgroundColor =  UIColor(red: 0.125, green: 0.416, blue: 0.365, alpha: 1)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(addTask), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let img = UIImage(systemName:  "plus")
        button.setImage(img?.withTintColor(.red, renderingMode: .alwaysOriginal), for: .normal)
        return button
    }
    
    func buildUI(){
        addSubviews()
        installConstraints()
    }
    func addSubviews(){
        view.addSubview(tableView)
        view.addSubview(addRecordButton)
    }
    func installConstraints(){
        
        NSLayoutConstraint.activate([
            addRecordButton.bottomAnchor.constraint(equalTo:  view.bottomAnchor,constant: -50),
            //  addRecordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            addRecordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -90),
            addRecordButton.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            addRecordButton.widthAnchor.constraint(equalTo: addRecordButton.heightAnchor),
            
            tableView.topAnchor.constraint(equalTo:  view.topAnchor,constant: 100),
            tableView.bottomAnchor.constraint(equalTo:  view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),

            
        ])
    }
}
